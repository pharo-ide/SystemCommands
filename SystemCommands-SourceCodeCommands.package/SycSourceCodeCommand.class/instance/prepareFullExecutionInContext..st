execution
prepareFullExecutionInContext: aSourceCodeContext
	super prepareFullExecutionInContext: aSourceCodeContext.
	
	method := aSourceCodeContext selectedMethod.
	sourceNode := aSourceCodeContext selectedSourceNode