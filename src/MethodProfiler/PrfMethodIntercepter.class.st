Class {
	#name : 'PrfMethodIntercepter',
	#superclass : 'MpHandler',
	#traits : 'TPrfMethodIntercepter',
	#classTraits : 'TPrfMethodIntercepter classTrait',
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

{ #category : 'accessing' }
PrfMethodIntercepter >> methodProxyClass [

	^ MpMethodProxy
]
