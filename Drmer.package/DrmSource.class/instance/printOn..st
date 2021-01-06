printing
printOn: aStream
	aStream
		nextPutAll: '[';
		nextPutAll: self label;
		nextPutAll: ']'