execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	newClassName := UIManager default request: 'Name of new class'.	
	newClassName isEmptyOrNil | (newClassName = targetClass name) ifTrue: [ CmdCommandAborted signal].
	