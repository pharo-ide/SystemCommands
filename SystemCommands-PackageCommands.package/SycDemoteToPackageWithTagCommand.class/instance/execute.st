execution
execute
			
	packages 
		select: [ :each | each name includes: $- ]
		thenDo: [ :each | each demoteToRPackageNamed: (each name copyUpToLast: $-) ]