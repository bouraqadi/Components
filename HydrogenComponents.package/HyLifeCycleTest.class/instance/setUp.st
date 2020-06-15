testing
setUp
	super setUp.
	component := HyStartableComponent new.
	observer := HyLifeCycleObserver new.
	component @ #startPort => observer.
	component @ #stopPort => observer.