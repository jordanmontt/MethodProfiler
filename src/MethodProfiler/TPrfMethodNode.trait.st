Trait {
	#name : 'TPrfMethodNode',
	#instVars : [
		'method'
	],
	#category : 'MethodProfiler',
	#package : 'MethodProfiler'
}

{ #category : 'accessing' }
TPrfMethodNode >> method: anObject [

	method := anObject
]

{ #category : 'converting' }
TPrfMethodNode >> printString [
	^method printString
]
