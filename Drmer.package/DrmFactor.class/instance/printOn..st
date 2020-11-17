printing
printOn: aStream
	aStream
		nextPutAll: attribute;
		nextPutAll: ' of ';
		nextPutAll: element