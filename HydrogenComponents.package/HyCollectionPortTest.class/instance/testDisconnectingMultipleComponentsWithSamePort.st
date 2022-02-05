running
testDisconnectingMultipleComponentsWithSamePort

	(a -@ #portA)
		notificationSelector: #incrementCount;
		=> { 
				b.
				c }.


	(a -@ #portB)
		notificationSelector: #decrementCount;
		=> { 
				b.
				c }.
		a -@ #portA disconnect: { 
			b.
			c }.
	3 timesRepeat: [ a triggerDecrement ].
	{ 
		b.
		c } do: [ :each | self assert: each count equals: -3 ].
	a triggerIncrement.
	{ 
		b.
		c } do: [ :each | self assert: each count equals: -3 ]