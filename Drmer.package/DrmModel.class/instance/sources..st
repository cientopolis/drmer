accessing
sources: anObject
	sources := anObject.
	self announcer announce: (DrmModelChangedAnnouncement subject: self)