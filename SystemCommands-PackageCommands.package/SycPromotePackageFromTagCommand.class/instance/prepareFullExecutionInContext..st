execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	package := aToolContext lastSelectedPackage.
	classTag := aToolContext lastSelectedClassTag