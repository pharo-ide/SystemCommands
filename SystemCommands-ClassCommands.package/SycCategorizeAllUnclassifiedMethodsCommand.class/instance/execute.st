execution
execute
	| classifier |
	"MethodClassifier should not be hardcoded and should be based on Smalltalk tools"
	classifier := MethodClassifier new.
	
	classes do: [ :each | 
		each uncategorizedSelectors do: [ :selector| 
			classifier classify: each >> selector ]]