running
testConnecting2BlocksZeroArg
	| success yes |
	success := false.
	yes := false.
	a @ #portA 
		notificationSelector: #incrementCount;
		=> {[ success := true ]. [yes := true]}.
	a triggerIncrement.
	self assert: success.
	self assert: yes.