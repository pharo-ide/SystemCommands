private
generateChanges

	| rbEnvironment |
	changes := command asRefactorings.
	rbEnvironment := self activeRBEnvironment.
	changes do: [ :each | 
		each model: rbEnvironment.
		each primitiveExecute ]