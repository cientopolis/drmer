accessing
destination: anObject
	destination := anObject.
	self announcer announce: (DrmLinkChangedAnnouncement subject: self)