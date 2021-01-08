printing
printOn: aStream
	aStream nextPutAll: '(' , levelAtOrigin , ')'.
	origin printOn: aStream.
	aStream nextPutAll: ' --'.
	sources do: [ :each | each printOn: aStream ].
	aStream nextPutAll: '--> '.
	destination printOn: aStream.
	aStream nextPutAll: '(' , levelAtDestination , ')'