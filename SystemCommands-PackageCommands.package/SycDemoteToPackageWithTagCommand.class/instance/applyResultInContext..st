execution
applyResultInContext: aBrowserContext
			
	| lastPackage newPackage tag |
	lastPackage := packages detect: [ :each | each name includes: $- ] ifNone: [ ^self ].

	newPackage := (lastPackage name copyUpToLast: $-) asPackage.
	tag := lastPackage name last: lastPackage name size - newPackage name size - 1.
	aBrowserContext showPackage: newPackage atClassTag: tag asSymbol