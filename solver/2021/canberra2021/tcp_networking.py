# uncompyle6 version 3.7.4
# Python bytecode 3.7 (3394)
# Decompiled from: Python 2.7.18 (default, Mar  8 2021, 13:02:45) 
# [GCC 9.3.0]
# Warning: this version of Python has problems handling the Python 3 "byte" type in constants properly.

# Embedded file name: tcp_networking.py
# Compiled at: 1983-03-17 08:15:31
# Size of source mod 2**32: 3170308913 bytes
from twisted.internet import protocol, reactor, endpoints
from twisted.internet.task import LoopingCall
from clienthandler import ClientController
import json

class EnlightenProtocol(protocol.Protocol):

    def __init__(self):
        self.report_position = LoopingCall(self.sendPosition)

    def connectionMade(self):
        self.report_position.start(1)

    def sendPosition(self):
        cc = ClientController.getInstance()
        data = {'uid':str(cc.uid),  'pos':cc.player_x}
        print(ClientController.getInstance().player_x)
        print("send",data)
        if ClientController.getInstance().player_x > 0:
            self.transport.write(bytes([
             71, 69, 84, 0, 69, 78, 76, 0, 73, 71, 72, 0, 84, 69, 78, 69, 68]))
            return
        self.transport.write(bytes((json.dumps(data)), encoding='utf-8'))

    def dataReceived(self, data: bytes):
        try:
            raw_data = json.loads(data.decode())
            if 0 in raw_data:
                ClientController.getInstance().blit_data.append(raw_data[0])
            else:
                ClientController.getInstance().handle_player_data(raw_data)
        except json.decoder.JSONDecodeError:
            return


class EnlightenFactory(protocol.ClientFactory):
    protocol = EnlightenProtocol

    def buildProtocol(self, addr):
        return EnlightenProtocol()