running
testConnecting
	a @ #portA notificationSelector: #incrementCount.
	a @ #portB notificationSelector: #decrementCount.
	a @ #(portA portB) => b.
	a @ #(portA portB) => {c. d}.
	a triggerIncrement.
	{b. c. d} do: [: each | 
		self assert: each count equals: 1].
	3 timesRepeat: [ a triggerDecrement ].
	{b. c. d} do: [: each | 
			self assert: each count equals: -2].
	
