printing
printOn: aStream
	aStream
		nextPutAll: '[';
		nextPutAll: label;
		nextPutAll: ']'