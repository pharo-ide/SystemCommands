execution
prepareFullExecutionInContext: aSourceCodeContext
	super prepareFullExecutionInContext: aSourceCodeContext.
	
	newName := UIManager default 
		request: 'New name of the variable' 
		initialAnswer: sourceNode name
		title: 'Rename a temp variable'.
	newName isEmptyOrNil | (newName = sourceNode name) ifTrue: [ CmdCommandAborted signal ]