testing
setUp
	super setUp.
	subject1 := HyStartableComponent new.
	subject2 := HyStartableComponent new.
	subject3  := HyStartableComponent new.
	observer := HyLifeCycleFusion new.
	observer observe: subject1.
	observer observeAll: {subject2. subject3}.
	counter := HyStartStopCounterForTest new.
	observer -@ #(startPort stopPort) => counter.