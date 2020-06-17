running
testConnectingBlockZeroArg
	| success |
	success := false.
	a @ #portA 
		notificationSelector: #incrementCount;
		=> [ success := true ].
	a triggerIncrement.
	self assert: success