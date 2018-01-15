execution
asRefactorings

	| refactorings |
	refactorings := classes flatCollect: [:eachClass |
		eachClass	 slots collect: [:var | 
			var createRefactoring: RBCreateAccessorsForVariableRefactoring for: eachClass]].
	refactorings do: [ :each | 
		each classVariable: false].
	^refactorings