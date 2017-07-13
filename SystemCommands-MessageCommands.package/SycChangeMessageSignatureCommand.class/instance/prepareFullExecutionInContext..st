execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.

	originalMessage := aToolContext lastSelectedMessage.
	renamingTool := aToolContext tool "it is needed because refactoring preview is not separated from execution logic yet."