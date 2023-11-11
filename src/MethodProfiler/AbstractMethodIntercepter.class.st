Class {
	#name : 'AbstractMethodIntercepter',
	#superclass : 'MpHandler',
	#instVars : [
		'proxy',
		'method',
		'runner'
	],
	#category : 'MethodProfiler-MethodProxies',
	#package : 'MethodProfiler',
	#tag : 'MethodProxies'
}

{ #category : 'installation' }
AbstractMethodIntercepter >> install [

	proxy := self methodProxyClass onMethod: method handler: self.
	proxy install
]

{ #category : 'accessing' }
AbstractMethodIntercepter >> method [

	^ method
]

{ #category : 'accessing' }
AbstractMethodIntercepter >> method: anObject [

	method := anObject
]

{ #category : 'installation' }
AbstractMethodIntercepter >> methodProxyClass [

	self subclassResponsibility
]

{ #category : 'accessing' }
AbstractMethodIntercepter >> proxy [

	^ proxy
]

{ #category : 'accessing' }
AbstractMethodIntercepter >> runner [

	^ runner
]

{ #category : 'accessing' }
AbstractMethodIntercepter >> runner: anObject [

	runner := anObject
]

{ #category : 'installation' }
AbstractMethodIntercepter >> uninstall [

	proxy uninstall
]
