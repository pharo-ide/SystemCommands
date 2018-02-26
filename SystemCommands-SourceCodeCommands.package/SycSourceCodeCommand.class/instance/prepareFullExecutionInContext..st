execution
prepareFullExecutionInContext: aSourceCodeContext
	super prepareFullExecutionInContext: aSourceCodeContext.
	
	method := aSourceCodeContext lastSelectedMethod.
	sourceNode := aSourceCodeContext lastSelectedSourceNode