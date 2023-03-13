from zipfile import ZipFile

# command.txt -> echo 'Hello World!'
# zipObj = ZipFile('sample.zip', 'w')
# zipObj.write('commands/command.txt')
# zipObj.close()

# command.txt -> cat flag.txt
zipObj = ZipFile('sample.zip','a')
zipObj.write('commands/command.txt')