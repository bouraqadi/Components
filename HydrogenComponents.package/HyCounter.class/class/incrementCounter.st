examples
incrementCounter
	<example>
	| counter display |
	Transcript clear; open.
	counter := HyCounter new.
	display := HyConsole new.
	(counter @ #countPort) 
		notificationSelector: #log:;
		=> display.
	[
		display log: '--- BEGIN counting'.
		10 timesRepeat: [ 
			counter increment.
			500 milliSeconds wait
		].
		display log: '--- END counting'.
	] forkAt: 30.
	