initialization
initialize
	super initialize.
	subjects := IdentitySet new.
	stoppedSubjects := IdentitySet new.
	startPort := HyCollectionPort notificationSelector: #start.
	stopPort := HyCollectionPort notificationSelector: #stop.