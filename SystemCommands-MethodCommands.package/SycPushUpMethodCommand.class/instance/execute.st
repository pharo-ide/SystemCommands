execution
execute

	| refactorings |
	refactorings := methods collect: [:method | 
		RBPullUpMethodRefactoring pullUp: {method selector} from: method origin].
	refactorings do: [ :each | each primitiveExecute].

	(ChangesBrowser changes: refactorings) open