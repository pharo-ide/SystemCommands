operations
requestNewSignature
	| methodName dialog |
	methodName := RBMethodName selector: selector arguments: argumentNames copy.
	dialog := MethodNameEditor openOn: methodName.
	dialog cancelled ifTrue: [  CmdCommandAborted signal ].
	
	selector = methodName selector & (argumentNames = methodName arguments)
		ifTrue: [ CmdCommandAborted signal].		
				
	^(SycMessageDescription fromContextOf: contextUser)
		selector: methodName selector;
		argumentNames: methodName arguments