Class {
	#name : 'PrfRWIMethodIntercepter',
	#superclass : 'MpRWIHandler',
	#traits : 'TPrfMethodIntercepter',
	#classTraits : 'TPrfMethodIntercepter classTrait',
	#category : 'MethodProfiler-runWitnIn',
	#package : 'MethodProfiler',
	#tag : 'runWitnIn'
}

{ #category : 'creation' }
PrfRWIMethodIntercepter class >> newForMethod: aMethod withRunner: aRunner [

	^ self new
		  method: aMethod;
		  runner: aRunner;
		  yourself
]

{ #category : 'installation' }
PrfRWIMethodIntercepter >> methodProxyClass [

	^ MpRWIMethodProxy
]
