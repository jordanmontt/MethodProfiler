Class {
	#name : 'PrfMethodIntercepter',
	#superclass : 'AbstractMethodIntercepter',
	#category : 'MethodProfiler-MethodProxies',
	#package : 'MethodProfiler',
	#tag : 'MethodProxies'
}

{ #category : 'creation' }
PrfMethodIntercepter class >> newForMethod: aMethod withRunner: aRunner [

	^ self new
		  method: aMethod;
		  runner: aRunner;
		  yourself
]

{ #category : 'installation' }
PrfMethodIntercepter >> methodProxyClass [

	^ MpMethodProxy
]
