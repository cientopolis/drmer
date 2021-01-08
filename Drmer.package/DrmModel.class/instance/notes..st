accessing
notes: anObject
	notes := anObject.
	self announcer announce: (DrmModelChangedAnnouncement subject: self)