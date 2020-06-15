initialization
initialize
	super initialize.
	count := 0.
	countPort := HyCollectionPort notificationSelector: #count:.