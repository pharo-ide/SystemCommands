execution
execute
	packages 
		do: [ :eachPackage | 
			eachPackage methods do: [ :eachMethod | eachMethod recompile ] ]
		displayingProgress: [:eachPackage | 'Recompiling ', eachPackage name]