running
testConnectingBlockWith2Args
	| received |
	a @ #portA 
		notificationSelector: #countIs:plus:;
		add: [: value1 : value2 | received := {value1. value2}  ] id: #b.
	a triggerAdd: 1 to: 2 id: #b.
	self assert: received equals: #(1 2)
