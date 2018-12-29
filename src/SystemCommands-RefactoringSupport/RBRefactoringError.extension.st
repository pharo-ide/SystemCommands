Extension { #name : #RBRefactoringError }

{ #category : #'*SystemCommands-RefactoringSupport' }
RBRefactoringError >> notifyUserOfCommand: aCommand [

	| answer title |
	title := self actionBlock isNotNil
		ifTrue: [ 'Warning' ] ifFalse: [ 'Warning. Want to proceed?' ].

	answer := (UIManager default confirm: self messageText label: title) = true.

	self actionBlock 
		ifNotNil: [ answer ifTrue: [ self actionBlock value ] ].

	self resume: answer	
]
