updating
updateRoot: aWARoot
	aWARoot script url: 'https://cdn.jsdelivr.net/npm/gojs/release/go.js'.
	aWARoot script beJavascript with: self theRealData.
	aWARoot script beJavascript with: self theScript