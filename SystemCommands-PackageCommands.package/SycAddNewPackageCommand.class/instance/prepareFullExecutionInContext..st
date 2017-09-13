execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
		
	systemEnvironment := aToolContext systemEnvironment.		
	packageName := ''.
	aToolContext isPackageSelected ifTrue: [ 
		packageName := aToolContext lastSelectedPackage name].
	
	packageName := UIManager default 
		request: 'Name of the new package:' initialAnswer: packageName title: 'Create a new package'.
	packageName isEmptyOrNil ifTrue: [ ^CmdCommandAborted signal]