accessing
title: anObject
	title := anObject.
	self announcer announce: (DrmModelChangedAnnouncement subject: self)