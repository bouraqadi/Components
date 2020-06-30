testing
setUp
	super setUp.
	component := HyStartableComponent new.
	counter := HyStartStopCounterForTest new.
	component -@ #startPort => counter.
	component -@ #stopPort => counter.