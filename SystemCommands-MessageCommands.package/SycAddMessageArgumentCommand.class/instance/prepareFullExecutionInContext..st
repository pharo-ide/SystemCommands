execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	newSelector := UIManager default
		request: 'Enter new selector:' initialAnswer: originalMessage selector.
	newSelector isEmptyOrNil ifTrue:  [ CmdCommandAborted signal ].
	
	argumentDefaultValue := UIManager default
		request: 'Enter default value for argument' initialAnswer: 'nil'.
	argumentDefaultValue isEmptyOrNil ifTrue:  [ CmdCommandAborted signal ]