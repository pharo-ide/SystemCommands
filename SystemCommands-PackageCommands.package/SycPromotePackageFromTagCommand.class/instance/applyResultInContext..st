execution
applyResultInContext: aBrowserContext

	| newPackage |
	newPackage := (package name, '-', classTag) asPackage.
	aBrowserContext showPackage: newPackage