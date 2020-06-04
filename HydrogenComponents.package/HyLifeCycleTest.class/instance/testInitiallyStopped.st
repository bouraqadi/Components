testing
testInitiallyStopped
	self assert: component isStopped.
	self deny: component isStarted.