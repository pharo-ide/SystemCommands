I am a command to add new package into the system.

I should be created on particular system environment which allow create packages:

 	resultPackage := systemEnvironment createPackageNamed: packageName
	
Currently only Calypso provide such compatible environment (ClySystemEnvironment)	
 
Internal Representation and Key Implementation Points.

    Instance Variables
	packageName:		<String>
	resultPackage:		<RPackage>
	systemEnvironment:		<Object>