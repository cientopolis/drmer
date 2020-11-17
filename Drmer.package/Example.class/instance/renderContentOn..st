rendering
renderContentOn: html
	| div |
	div := html div.
	div
		id: 'myDiagramDiv';
		style:
			'background-color: whitesmoke; border: solid 1px black; width: 100%; height: 700px'.
	html script: 'init()'