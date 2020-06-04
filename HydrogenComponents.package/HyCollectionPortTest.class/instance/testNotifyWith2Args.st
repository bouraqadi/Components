running
testNotifyWith2Args
	a port 
		notificationSelector: #countIs:plus:;
		addAll: {b. c.}.
	#(10 20 30) with: #(1 2 3) do: [ : delta1 : delta2 |
		a triggerAdd: delta1 to: delta2.
		{b. c.} do: [: each | 
			self assert: each count equals: delta1 + delta2].
	].
