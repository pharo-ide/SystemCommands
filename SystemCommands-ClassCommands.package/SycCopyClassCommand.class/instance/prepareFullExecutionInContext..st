execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	originalClass := aToolContext lastSelectedClass.
	
	newClassName := UIManager default request: 'Input new class name' initialAnswer: originalClass name.
	
	newClassName isEmptyOrNil | (newClassName = originalClass name) 
		ifTrue: [ CmdCommandAborted signal ]