connecting
observe: aComponent
	subjects add: aComponent.
	stoppedSubjects add: aComponent.
	aComponent @ #(startPort stopPort) => self.
