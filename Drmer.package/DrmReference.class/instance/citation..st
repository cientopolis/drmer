accessing
citation: anObject
	citation := anObject.
	self announcer announce: (DrmSourceChangedAnnouncement subject: self)