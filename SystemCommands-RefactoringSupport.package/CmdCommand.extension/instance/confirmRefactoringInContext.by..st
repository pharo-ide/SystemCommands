*SystemCommands-RefactoringSupport
confirmRefactoringInContext: aToolContext by: aCommandActivator
	
	| submitDialog |
	
	submitDialog := SycRefactoringPreview for: self scopes: aToolContext refactoringScopes.
	submitDialog openDialogWithSpec
		okAction: [ submitDialog accept. 
			aCommandActivator applyCommandResult];
		cancelAction: [ submitDialog cancel ].
	CmdCommandAborted signal