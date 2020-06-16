running
testConnecting
	a portA
		notificationSelector: #incrementCount;
		add: b id: #b;
		addAll: { c. d} id: #c;
		add: e idAll: #(#x #y);
		addAll: {d. e} idAll: #(#d #e).
	3 timesRepeat: [ a triggerIncrement: #b].
	self assert: b count equals: 3.
	{c. d. e} do: [: each | self assert: each count equals: 0].
	2 timesRepeat: [ a triggerIncrement: #c].
	self assert: b count equals: 3.
	{c. d} do: [: each | self assert: each count equals: 2].
	self assert: e count equals: 0.
	a triggerIncrement: #x.
	self assert: e count equals: 1.
	self assert: b count equals: 3.
	{c. d} do: [: each | self assert: each count equals: 2].
	a triggerIncrement: #y.
	self assert: e count equals: 2.
	self assert: b count equals: 3.
	{c. d} do: [: each | self assert: each count equals: 2].
	#(e d) with: #(3 4) do: [ : id : expectedCount |
		a triggerIncrement: id.
		{e. d} do: [ : component | self assert: component count equals: expectedCount]
	].
	self assert: b count equals: 3.
	self assert: c count equals: 2.
	
	
	