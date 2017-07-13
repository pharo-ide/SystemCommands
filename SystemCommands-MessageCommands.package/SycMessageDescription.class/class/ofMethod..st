instance creation
ofMethod: aMethod
	^(self fromContextOf: aMethod)
		selector: aMethod selector;
		argumentNames: aMethod argumentNames