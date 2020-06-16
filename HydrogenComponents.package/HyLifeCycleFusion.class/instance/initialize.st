initialization
initialize
	super initialize.
	subjects := IdentitySet new.
	stoppedSubjects := IdentitySet new.
	startPort := HyCollectionPort notificationSelector: #started:.
	stopPort := HyCollectionPort notificationSelector: #stopped:.