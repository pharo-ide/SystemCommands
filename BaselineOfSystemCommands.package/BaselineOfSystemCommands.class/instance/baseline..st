baselines
baseline: spec
   <baseline>

		spec project: 'Commander' with: [
				spec
					baseline: #'Commander';
					repository: 'github://dionisiydk/Commander:v0.2.x' ].
		spec 
			package: #'SystemCommands-ClassCommands' with: [
				spec requires: #('Commander' ). ];
			package: #'SystemCommands-MessageCommands' with: [
				spec requires: #('Commander' ). ];
			package: #'SystemCommands-MethodCommands' with: [
				spec requires: #('Commander' ). ];
			package: #'SystemCommands-PackageCommands' with: [
				spec requires: #('Commander' ). ];
			package: #'SystemCommands-SourceCodeCommands' with: [
				spec requires: #('Commander' ). ];
			package: #'SystemCommands-VariableCommands' with: [
				spec requires: #('Commander' ). ]. 