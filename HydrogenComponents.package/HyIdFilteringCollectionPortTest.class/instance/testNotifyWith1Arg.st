running
testNotifyWith1Arg
	a port
		notificationSelector: #count:;
		add: b id: #b;
		addAll: { c. d} id: #x.
	#(10 20 30) do: [ : expectedCount |
		a triggerSetCount: expectedCount id: #b.
		self assert: b count equals: expectedCount.
		{c. d} do: [: each | self assert: each count equals: 0].
	].
	#(11 22 33) do: [ : expectedCount |
		a triggerSetCount: expectedCount id: #x.
		self assert: b count equals: 30.
		{c. d} do: [: each | self assert: each count equals: expectedCount].
	].
