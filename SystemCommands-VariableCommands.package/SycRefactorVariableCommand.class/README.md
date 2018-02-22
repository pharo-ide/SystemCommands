I am a base class for command which perform particular kind refactoring on given variables.

I provide suitable method to create refactoring instances: 

- createRefactorings: variableRefactoringClass
- createRefactorings: variableRefactoringClass using: initBlock

Subclasses use this methods to create refactoring instances.

I delegate actual refactoring instantiation to the each variable. It allows abstract difference between different kind of variables and to have single command for same kind of class variable refactoring and instance variable refactoring:

	eachVar createVariableRefactoring: variableRefactoringClass
	
Look at #createVariableRefactoring: implementors for details.