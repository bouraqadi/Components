running
testConnectionFaciltyMethod
	(a @ #portA)
		notificationSelector: #incrementCount;
		=> b;
		=> { c. d}.
	1 to: 3 do: [: expectedCount |
		a triggerIncrement.
		{b. c. d} do: [: each | 
			self assert: each count equals: expectedCount].
	].
	self assert: e count equals: 0.
