accessing
notes: anObject
	notes := anObject.
	self announcer announce: (DrmSourceChangedAnnouncement subject: self)