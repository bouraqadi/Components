running
testValueNotificationSelector
	| success yes |
	success := false.
	yes := false.
	a -@ #portA 
		notificationSelector: #value;
		=> {[ success := true ]. [yes := true]}.
	a triggerIncrement.
	self assert: success.
	self assert: yes.