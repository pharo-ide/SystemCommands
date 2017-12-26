execution
execute
	
	| refactoring |
	refactoring := RBAddClassRefactoring
		addClass: newClassName
		superclass: targetClass
		subclasses: targetClass subclasses
		category: targetClass category.
	refactoring execute