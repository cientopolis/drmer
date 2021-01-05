accessing
origin: anObject
	origin := anObject.
	self announcer announce: (DrmLinkChangedAnnouncement subject: self)