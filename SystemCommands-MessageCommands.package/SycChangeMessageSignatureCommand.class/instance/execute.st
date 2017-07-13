execution
execute
	| refactoring submitDialog |
	refactoring := self createRefactoring.
		
	[refactoring primitiveExecute] on: RBRefactoringError do: [:err |
		self inform: err messageText. err resume].
	submitDialog := ChangesBrowser changes: {refactoring}.
	submitDialog openDialogWithSpec
		okAction: [ submitDialog accept. 
			renamingTool 
				selectMessage: originalMessage 
				withNewSelector: refactoring newSelector];
		cancelAction: [ submitDialog cancel ]