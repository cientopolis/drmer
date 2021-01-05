accessing
isExternal: anObject
	isExternal := anObject.
	self announcer announce: (DrmNodeChangedAnnouncement subject: self)