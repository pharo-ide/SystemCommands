execution
execute

	self 
		executeVariablesRefactoring: RBCreateAccessorsForVariableRefactoring 
		with: [ :refactoring :var |
			refactoring classVariable: var isClassVariable ]