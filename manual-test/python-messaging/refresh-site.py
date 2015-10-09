from aktos_dcs import *

from pprint import pprint

class Test(Actor):
    def receive(self, msg):
        print "Test got message: "
        pprint(msg)

    def action(self):
	print "message is sending.."
        self.send({'IoMessage': {'pin_name': 'reload-page', 'val': 1}})
        sleep(1000)

ProxyActor()
Test()
wait_all()
