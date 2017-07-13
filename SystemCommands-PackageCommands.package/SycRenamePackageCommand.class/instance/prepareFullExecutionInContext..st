execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	package := aToolContext lastSelectedPackage.	
	newName := UIManager default 
		request: 'New name of the package' 
		initialAnswer: package name 
		title: 'Rename a package'.
	newName isEmptyOrNil | (newName = package name) ifTrue: [ ^ CmdCommandAborted signal ]