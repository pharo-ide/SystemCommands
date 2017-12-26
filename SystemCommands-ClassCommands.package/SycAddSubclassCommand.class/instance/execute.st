execution
execute
	
	| refactoring |
	refactoring := RBAddClassRefactoring
		addClass: newClassName
		superclass: targetClass
		subclasses: #()
		category: targetClass category.
	refactoring execute