connecting
addAll: newElement idAll: ids 
	ids do: [ : each | self addAll: newElement id: each  ]