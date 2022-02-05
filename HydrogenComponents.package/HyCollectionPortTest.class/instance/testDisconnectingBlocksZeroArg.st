running
testDisconnectingBlocksZeroArg

	| success yes blockToDisconnect |
	success := false.
	yes := false.
	blockToDisconnect := [ yes := true ].
	(a -@ #portA)
		notificationSelector: #incrementCount;
		=> { 
				[ success := true ].
				blockToDisconnect }.
	a triggerIncrement.
	self assert: success.
	self assert: yes.
	a -@ #portA disconnect: blockToDisconnect.
	self assert: success.
	self assert: yes.
	success := false.
	yes := false.
	a triggerIncrement.
	self assert: success.
	self deny: yes.
	