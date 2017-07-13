execution
execute

	| refactorings |
	refactorings := methods collect: [:method | 
		RBPushDownMethodRefactoring pushDown: {method selector} from: method origin].
	refactorings do: [ :each | each primitiveExecute].

	(ChangesBrowser changes: refactorings) open