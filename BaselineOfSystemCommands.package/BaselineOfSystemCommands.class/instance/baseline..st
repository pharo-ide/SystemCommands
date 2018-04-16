baselines
baseline: spec
   <baseline>

	spec for: #'common' do: [
		spec baseline: 'Commander' with: [
				spec repository: 'github://dionisiydk/Commander:v0.6.x' ].
		spec
			package: #'SystemCommands-RefactoringSupport' with: [
				spec requires: #('Commander' ). ]; 
			package: #'SystemCommands-ClassCommands' with: [
				spec requires: #('Commander' #'SystemCommands-RefactoringSupport'). ];
			package: #'SystemCommands-MessageCommands' with: [
				spec requires: #('Commander' #'SystemCommands-RefactoringSupport'). ];
			package: #'SystemCommands-MethodCommands' with: [
				spec requires: #('Commander' #'SystemCommands-RefactoringSupport'). ];
			package: #'SystemCommands-PackageCommands' with: [
				spec requires: #('Commander' ). ];
			package: #'SystemCommands-SourceCodeCommands' with: [
				spec requires: #('Commander' #'SystemCommands-RefactoringSupport'). ];
			package: #'SystemCommands-VariableCommands' with: [
				spec requires: #('Commander' #'SystemCommands-RefactoringSupport'). ]
	]
