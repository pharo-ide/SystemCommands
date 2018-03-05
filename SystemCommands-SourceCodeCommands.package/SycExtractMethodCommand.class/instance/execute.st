execution
execute
	| refactoring dialog selectedInterval |
	selectedInterval := selectedTextInterval ifEmpty: [ sourceNode sourceInterval ].
	
	refactoring := RBExtractMethodRefactoring	
		extract: selectedInterval
		from: method selector
		in: method origin.
	refactoring setOption: #methodName toUse:  [ :ref :methodName |
		dialog := SycMethodNameEditor openOn: methodName.
		dialog cancelled ifTrue: [  CmdCommandAborted signal ].
		methodName].
	
	refactoring execute