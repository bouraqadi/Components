running
testNotifyWith2Args
	a port
		notificationSelector: #countIs:plus:;
		add: b id: #b;
		addAll: { c. d} id: #x.
	#(10 20 30) with: #(1 2 3) do: [ : delta1 : delta2 |
		a triggerAdd: delta1 to: delta2 id: #b.
		self assert: b count equals: delta1 + delta2.
		{c. d} do: [: each | 
			self assert: each count equals: 0].
	].
	#(11 22 33) do: [ : delta |
		a triggerAdd: delta to: delta id: #x.
		self assert: b count equals: 33.
		{c. d} do: [: each | self assert: each count equals: 2*delta].
	].

