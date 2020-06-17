running
testConnectingBlockWith2Args
	| received |
	a @ #portA 
		notificationSelector: #countIs:plus:;
		=> [: value1 : value2 | received := {value1. value2}  ].
	a triggerAdd: 1 to: 2.
	self assert: received equals: #(1 2)