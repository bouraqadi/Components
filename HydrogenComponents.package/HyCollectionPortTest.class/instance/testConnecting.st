running
testConnecting
	a port
		notificationSelector: #incrementCount;
		add: b;
		addAll: { c. d}.
	1 to: 3 do: [: expectedCount |
		a triggerIncrement.
		{b. c. d} do: [: each | 
			self assert: each count equals: expectedCount].
	].
	self assert: e count equals: 0.
	a port add: e.
	a triggerIncrement.
	{b. c. d} do: [: each | 
			self assert: each count equals: 4].
	self assert: e count equals: 1.
	
