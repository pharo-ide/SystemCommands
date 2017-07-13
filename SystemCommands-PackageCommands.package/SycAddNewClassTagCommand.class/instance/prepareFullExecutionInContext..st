execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	package := aToolContext lastSelectedPackage.
	
	tagName := UIManager default 
		request: ('New class tag in ' , package name) 
		initialAnswer: '' 
		title: 'Create a new class tag'.
	tagName isEmptyOrNil ifTrue: [ CmdCommandAborted signal ]