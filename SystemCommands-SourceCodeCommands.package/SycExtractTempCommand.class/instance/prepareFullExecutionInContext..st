execution
prepareFullExecutionInContext: aSourceCodeContext
	super prepareFullExecutionInContext: aSourceCodeContext.
	
	tempName := UIManager default 
		request: 'New temp name' 
		initialAnswer: ''
		title: 'Extract code to temp variable'.
	tempName isEmptyOrNil ifTrue: [ CmdCommandAborted signal ]