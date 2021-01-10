accessing
sources: anObject
	sources := anObject.
	self announcer announce: (DrmModelSourcesChangedAnnouncement subject: self)