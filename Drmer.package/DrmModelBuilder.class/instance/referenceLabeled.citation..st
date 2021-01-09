api
referenceLabeled: label citation: aCitationInAPAStyle
	| reference |
	reference := DrmReference
		labeled: label
		citation: aCitationInAPAStyle.
	model addSource: reference.
	^ reference