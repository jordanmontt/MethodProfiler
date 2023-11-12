Trait {
	#name : 'TPrfMethodIntercepter',
	#instVars : [
		'method',
		'proxy',
		'runner'
	],
	#category : 'MethodProfiler-Core',
	#package : 'MethodProfiler',
	#tag : 'Core'
}

{ #category : 'evaluating' }
TPrfMethodIntercepter >> afterMethod [

	runner exitMethod: method
]

{ #category : 'evaluating' }
TPrfMethodIntercepter >> beforeMethod [

	runner enterMethod: method
]

{ #category : 'installation' }
TPrfMethodIntercepter >> install [

	proxy ifNil: [
		proxy := self methodProxyClass onMethod: method handler: self.
		proxy install ]
]

{ #category : 'accessing' }
TPrfMethodIntercepter >> method [

	^ method
]

{ #category : 'accessing' }
TPrfMethodIntercepter >> method: anObject [

	method := anObject
]

{ #category : 'accessing' }
TPrfMethodIntercepter >> proxy [

	^ proxy
]

{ #category : 'accessing' }
TPrfMethodIntercepter >> runner [

	^ runner
]

{ #category : 'accessing' }
TPrfMethodIntercepter >> runner: anObject [

	runner := anObject
]

{ #category : 'installation' }
TPrfMethodIntercepter >> uninstall [

	proxy ifNotNil: [
		proxy uninstall.
		proxy := nil ]
]
