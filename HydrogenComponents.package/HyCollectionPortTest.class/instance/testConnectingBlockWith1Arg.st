running
testConnectingBlockWith1Arg
	| received |
	a @ #portA 
		notificationSelector: #count:;
		=> [: value | received := value ].
	a triggerSetCount: 123.
	self assert: received equals: 123