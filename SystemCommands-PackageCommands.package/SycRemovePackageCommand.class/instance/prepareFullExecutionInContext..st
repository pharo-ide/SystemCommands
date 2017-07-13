execution
prepareFullExecutionInContext: aToolContext
	| packagesWithClasses names answer |
	super prepareFullExecutionInContext: aToolContext.
	
	packagesWithClasses := packages reject: [ :each | each isEmpty].
	packagesWithClasses ifNotEmpty: [ 	
		names := (packagesWithClasses collect: [:package | package name ]) joinUsing: ', '.
		answer := UIManager default confirm: (
			'Are you sure you want to delete the selection(s)?', String cr, names, ' still have classes').
		answer ifFalse: [ CmdCommandAborted signal ]]