printing
printOn: aStream
	self printLevel: levelAtOrigin on: aStream.
	origin printOn: aStream.
	aStream nextPutAll: ' --'.
	sources do: [ :each | each printOn: aStream ].
	aStream nextPutAll: '--> '.	
	destination printOn: aStream.
	self printLevel: levelAtDestination on: aStream