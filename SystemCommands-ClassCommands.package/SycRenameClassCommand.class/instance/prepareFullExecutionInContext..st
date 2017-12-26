execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	newName := UIManager default 
		request: 'New name of the class' initialAnswer: targetClass name title: 'Rename a class'.
		
	newName isEmptyOrNil | (newName = targetClass name) ifTrue: [ CmdCommandAborted signal]