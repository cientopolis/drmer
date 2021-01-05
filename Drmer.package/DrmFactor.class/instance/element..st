accessing
element: anObject
	element := anObject.
	self announcer announce: (DrmNodeChangedAnnouncement subject: self)