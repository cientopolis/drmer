links
addLink: aLink
	links add: aLink.
   self announcer announce: (DrmLinkAddedAnnouncement subject: aLink).
	^ aLink