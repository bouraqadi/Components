running
testConnectingMultipleComponentsWithSamePort
	{ a. b } -@ #portA 
		notificationSelector: #incrementCount;
		=> c.
	{ a. b } -@ #portB 
		notificationSelector: #decrementCount;
		=> {d. e}.
	a triggerIncrement.
	self assert: c count equals: 1.
	b triggerIncrement.
	self assert: c count equals: 2.
	a triggerDecrement.
	{d. e} do: [: each |
		self assert: each count equals: -1].
	b triggerDecrement.
	{d. e} do: [: each |
		self assert: each count equals: -2].
	