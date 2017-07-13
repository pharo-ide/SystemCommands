*SystemCommands-VariableCommands
createRefactoring: variableRefactoringClass for: declarationClass
	^variableRefactoringClass 
			variable: self name
			class: declarationClass