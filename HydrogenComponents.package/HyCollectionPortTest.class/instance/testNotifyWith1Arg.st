running
testNotifyWith1Arg
	a port 
		notificationSelector: #count:;
		addAll: {b. c.}.
	#(10 20 30) do: [ : expectedCount |
		a triggerSetCount: expectedCount.
		{b. c.} do: [: each | 
			self assert: each count equals: expectedCount].
	].
