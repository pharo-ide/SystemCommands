execution
prepareFullExecutionInContext: aToolContext
	| userVar showRefs |
	super prepareFullExecutionInContext: aToolContext.

	userVar := variables detect: [ :each | each isUnusedVariable not ] ifNone: [^self].
	
	showRefs := UIManager default confirm: 
		'There are ', userVar methodsSize asString, ' refs of ', userVar name, '. Show them?'.
	showRefs ifTrue: [aToolContext browseVariableReferencesOf: {userVar}].
	CmdCommandAborted signal