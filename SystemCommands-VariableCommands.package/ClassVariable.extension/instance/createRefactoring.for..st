*SystemCommands-VariableCommands
createRefactoring: variableRefactoringClass for: declarationClass
	^variableRefactoringClass classVariableAnalog
			variable: self name
			class: declarationClass