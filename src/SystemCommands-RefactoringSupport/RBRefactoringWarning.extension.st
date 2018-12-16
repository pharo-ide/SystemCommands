Extension { #name : #RBRefactoringWarning }

{ #category : #'*SystemCommands-RefactoringSupport' }
RBRefactoringWarning >> notifyUserOfCommand: aCommand [

	| answer title |
	title := (self messageText endsWith: '?') 
		ifTrue: [ 'Warning' ] ifFalse: [ 'Warning. Want to proceed?' ].
	answer := UIManager default confirm: self messageText label: title.
	answer ifTrue: [ self resume: true ]
]
