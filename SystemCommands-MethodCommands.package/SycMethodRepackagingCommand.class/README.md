I am a base class for commands which repackage given methods.

I provide suitable methods for subclasses to move methods to package: 

- moveMethod: aMethod toPackage: aPackage

Subclasses should just deside what package it should be. 