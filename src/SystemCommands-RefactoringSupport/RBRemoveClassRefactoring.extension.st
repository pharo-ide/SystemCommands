Extension { #name : #RBRemoveClassRefactoring }

{ #category : #'*SystemCommands-RefactoringSupport' }
RBRemoveClassRefactoring >> classes [
	
	^ classNames collect: [ :e | (model classNamed: e) realClass ]
]
