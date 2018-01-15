execution
asRefactorings

	^methods collect: [:method | 
		RBPushDownMethodRefactoring pushDown: {method selector} from: method origin]