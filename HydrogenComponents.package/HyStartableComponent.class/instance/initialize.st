initialization
initialize
	super initialize.
	isStarted := false.
	startPort := HyCollectionPort notificationSelector: #started:.
	stopPort := HyCollectionPort notificationSelector: #stopped:.
	
