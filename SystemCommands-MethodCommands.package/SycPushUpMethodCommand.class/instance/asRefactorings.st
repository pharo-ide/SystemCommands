execution
asRefactorings

	^methods collect: [:method | 
		RBPullUpMethodRefactoring pullUp: {method selector} from: method origin]