execution
asRefactorings

	^self
		createRefactorings: RBCreateAccessorsForVariableRefactoring 
		using: [ :refactoring :var |
			refactoring classVariable: var isClassVariable ]