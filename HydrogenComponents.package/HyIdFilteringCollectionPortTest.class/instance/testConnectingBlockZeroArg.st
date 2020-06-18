running
testConnectingBlockZeroArg
	| success |
	success := false.
	a @ #portA 
		notificationSelector: #incrementCount;
		add: [ success := true ] id: #b.
	a triggerIncrement: #b.
	self assert: success
