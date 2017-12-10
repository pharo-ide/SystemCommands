execution
prepareFullExecutionInContext: aToolContext
	| answer |
	super prepareFullExecutionInContext: aToolContext.

	answer := aToolContext confirmVariableRemoveFor: variables.
	answer ifFalse: [CmdCommandAborted signal]