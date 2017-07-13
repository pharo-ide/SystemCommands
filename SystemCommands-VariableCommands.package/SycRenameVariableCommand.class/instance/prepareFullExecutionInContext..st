execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	variable := aToolContext lastSelectedVariable.
	newName := UIManager default 
		request: 'New name of the variable' 
		initialAnswer: variable name 
		title: 'Rename a variable'.
	newName isEmptyOrNil | (newName = variable name) ifTrue: [ CmdCommandAborted signal ]