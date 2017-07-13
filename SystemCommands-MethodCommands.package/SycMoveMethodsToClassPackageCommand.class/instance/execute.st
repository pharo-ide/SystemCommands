execution
execute

	| classPackage |
	methods do: [ :each | 
		classPackage := each origin package.
		self moveMethod: each toPackage: classPackage]