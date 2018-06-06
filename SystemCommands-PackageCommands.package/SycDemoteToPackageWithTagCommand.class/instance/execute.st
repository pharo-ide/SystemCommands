execution
execute
			
	packages 
		select: [ :each | each name includes: $- ]
		thenDo: [ :each | each demoteToTagInPackageNamed: (each name copyUpToLast: $-) ]