execution
readParametersFromContext: aSourceCodeContext
	super readParametersFromContext: aSourceCodeContext.
	
	method := aSourceCodeContext lastSelectedMethod.
	sourceNode := aSourceCodeContext lastSelectedSourceNode