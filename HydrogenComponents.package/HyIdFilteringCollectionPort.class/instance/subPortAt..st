connecting
subPortAt: id
	^ subPortsDict at: id ifAbsentPut: [ self newSubPort ]