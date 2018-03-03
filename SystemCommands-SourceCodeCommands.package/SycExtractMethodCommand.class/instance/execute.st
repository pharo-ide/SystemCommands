execution
execute
	| refactoring dialog |
	refactoring := RBExtractMethodRefactoring	
		extract: sourceNode sourceInterval
		from: method selector
		in: method origin.
	refactoring setOption: #methodName toUse:  [ :ref :methodName |
		dialog := SycMethodNameEditor openOn: methodName.
		dialog cancelled ifTrue: [  CmdCommandAborted signal ].
		methodName].
	
	refactoring execute