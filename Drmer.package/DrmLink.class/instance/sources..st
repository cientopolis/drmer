accessing
sources: anObject
	sources := anObject.
	self announcer announce: (DrmLinkChangedAnnouncement subject: self)