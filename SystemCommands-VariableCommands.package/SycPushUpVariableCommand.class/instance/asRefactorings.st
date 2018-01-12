execution
asRefactorings

	^self 
		createRefactorings: RBPullUpInstanceVariableRefactoring 
		using: [ :refactoring :var |
			refactoring variable: var name class: var definingClass superclass]