execution
execute
	
	methods do: [ :each | 
		self moveMethod: each toPackage: package]
