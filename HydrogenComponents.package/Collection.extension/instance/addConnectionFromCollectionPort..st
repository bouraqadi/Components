*HydrogenComponents
addConnectionFromCollectionPort: aPort
	self do: [ : each | each addConnectionFromCollectionPort: aPort ]