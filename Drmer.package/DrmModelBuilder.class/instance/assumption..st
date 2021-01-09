api
assumption: notes
	| assumption |
	assumption := DrmAssumption notes: notes.
	model addSource: assumption.
	^ assumption