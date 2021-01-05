factors
removeFactor: aFactor
	(links
		select: [ :link | link origin == aFactor or: [ link destination == aFactor ] ])
		do: [ :link | self removeLink: link ].
	factors remove: aFactor.
	self announcer
		announce: (DrmNodeRemovedAnnouncement subject: aFactor).
	^ aFactor