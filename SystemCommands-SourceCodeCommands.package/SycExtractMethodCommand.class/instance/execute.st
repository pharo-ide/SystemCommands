execution
execute
	| refactoring dialog |
	refactoring := RBExtractMethodRefactoring	
		extract: selectedTextInterval
		from: method selector
		in: method origin.
	refactoring setOption: #methodName toUse:  [ :ref :methodName |
		dialog := SycMethodNameEditor openOn: methodName.
		dialog cancelled ifTrue: [  CmdCommandAborted signal ].
		methodName].
	
	refactoring execute