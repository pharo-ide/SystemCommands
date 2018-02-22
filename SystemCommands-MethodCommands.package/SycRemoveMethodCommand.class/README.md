I am a command to remove given methods.

I use special remove strategy to define what to do when given methods are in use.

So I delegate actual remove operation to the strategy: 

	removeStrategy removeMethods: methods
 
Internal Representation and Key Implementation Points.

    Instance Variables
	removeStrategy:		<SycRemoveMethodStrategy>