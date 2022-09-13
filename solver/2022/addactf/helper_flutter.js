//frida -U -f com.example.flutter_ctf_challenge -l helper_flutter.js --no-pause

function hookFunc() {
    var isolate = 0x00000000001a8d70;
    // encrypt input 0x000000000020d5e0
    // base64 encode 0x000000000025631c
    var target = 0x000000000020c200;
    var dumpOffset = isolate + target;

    var argBufferSize = 300

    var address = Module.findBaseAddress('libapp.so') // libapp.so (Android) or App (IOS) 
    console.log('\n\nbaseAddress: ' + address.toString())

    var codeOffset = address.add(dumpOffset)
    console.log('codeOffset: ' + codeOffset.toString())
    console.log('')
    console.log('Wait..... ')

    Interceptor.attach(codeOffset, {
        onEnter: function(args) {

            console.log('')
            console.log('--------------------------------------------|')
            console.log('\n    Hook Function: ' + dumpOffset);
            console.log('')
            console.log('--------------------------------------------|')
            console.log('')

            for (var argStep = 0; argStep < 50; argStep++) {
                try {
                    dumpArgs(argStep, args[argStep], argBufferSize);
                } catch (e) {
                    break;
                }

            }
            // for(let i = 0; i < 8; i++) { try { console.log("addr",i,args[i], "\r\n");console.log(hexdump(args[i]), "\r\n"); } catch (error) { console.log("fail",i,(args[i]), "\r\n"); } } 

        },
        onLeave: function(retval) {
            console.log('RETURN : ' + retval)
            // console.log(hexdump(retval))
            dumpArgs(0, retval, 300);

            // for (var argStep = 0; argStep < 50; argStep++) {
            //     try {
            //         dumpArgs(argStep, retval[argStep], argBufferSize);
            //     } catch (e) {

            //         break;
            //     }

            // }
        }
    });

}

function dumpArgs(step, address, bufSize) {

    var buf = Memory.readByteArray(address, bufSize)

    console.log('Argument ' + step + ' address ' + address.toString() + ' ' + 'buffer: ' + bufSize.toString() + '\n\n Value:\n' +hexdump(buf, {
        offset: 0,
        length: bufSize,
        header: false,
        ansi: false
    }));

    console.log('')
    console.log('----------------------------------------------------')
    console.log('')
}

setTimeout(hookFunc, 1000)