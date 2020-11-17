printing
printLevel: level on: aStream
	level < 0
		ifTrue: [ aStream nextPutAll: ' (-) ' ].
	level > 0
		ifTrue: [ aStream nextPutAll: ' (+) ' ]