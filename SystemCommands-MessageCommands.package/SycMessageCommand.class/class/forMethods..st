instance creation
forMethods: methods
	^self for: (methods collect: [:each | SycMessageDescription ofMethod: each])