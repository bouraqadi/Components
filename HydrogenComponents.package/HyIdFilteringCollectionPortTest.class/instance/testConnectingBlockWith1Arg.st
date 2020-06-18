running
testConnectingBlockWith1Arg
	| received |
	a @ #portA 
		notificationSelector: #count:;
		add: [: value | received := value ] id: #b.
	a triggerSetCount: 123 id: #b.
	self assert: received equals: 123
