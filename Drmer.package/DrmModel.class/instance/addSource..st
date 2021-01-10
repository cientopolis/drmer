accessing
addSource: aSource
	sources add: aSource.
	self announcer
		announce: (DrmModelSourcesChangedAnnouncement subject: self)