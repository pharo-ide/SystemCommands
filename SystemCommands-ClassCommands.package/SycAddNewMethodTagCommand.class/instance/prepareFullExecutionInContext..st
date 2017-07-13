execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	tagName := UIManager default 
		request: 'Name of the new protocol:' initialAnswer: '' title: 'Create a new protocol'.
	tagName isEmptyOrNil ifTrue: [ CmdCommandAborted signal ].
	
	targetClass := self requestClassInContext: aToolContext.
	targetClass := aToolContext resolveCurrentClassSideOf: targetClass