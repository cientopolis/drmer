updating
exampleModel
	| model qopd tsm nom |
   model := DrmModel new. 
   qopd := 'Quality' of: 'problem definition'.
   tsm := 'Percentace' of: 'time spent on modifications'.
   model add: ( qopd at: -1 causes: tsm toBe: -1 accordingTo: '[1]').
   nom := 'Number' of: 'modifications'.
   model add: (qopd at: -1 causes: nom toBe: 0 accordingTo: '[1]').
   model add: (qopd at: -1 causes: nom toBe: 1 accordingTo: '[2]').
   model add: (nom at: 1 causes: tsm toBe: 1 accordingTo: '[E]').
	^ model