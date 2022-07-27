from websocket import create_connection
import datetime
ws = create_connection("ws://challenges.ctfd.io:30065/")
print(ws.recv())
ws.send("y")
while True:
	try:
		tmp=ws.recv().strip().split(" ")
		print(tmp)
		tmp2=list(map(int,tmp[0].split("-")))
		tmp3=list(map(int,tmp[1].split(":")))
		ans=int(datetime.datetime(tmp2[0],tmp2[1],tmp2[2],tmp3[0],tmp3[1],tmp3[2]).strftime('%s'))+25200
		ws.send(str(ans))
		print(ans)
	except Exception as e:
		print(ws.recv())
