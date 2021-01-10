accessing
label: anObject
	label := anObject.
	self announcer announce: (DrmSourceChangedAnnouncement subject: self)