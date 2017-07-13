execution
execute
	self 
		executeVariablesRefactoring: RBPullUpInstanceVariableRefactoring 
		with: [ :refactoring :var |
			refactoring variable: var name class: var declarationClass superclass]