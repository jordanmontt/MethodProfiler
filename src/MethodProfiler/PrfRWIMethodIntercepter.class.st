Class {
	#name : 'PrfRWIMethodIntercepter',
	#superclass : 'AbstractMethodIntercepter',
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
