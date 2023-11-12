Class {
	#name : 'PrfRWIMethodIntercepter',
	#superclass : 'AbstractPrfMethodIntercepter',
	#classTraits : 'AnObsoleteTPrfMethodIntercepter classTrait',
	#category : 'MethodProfiler-runWitnIn',
	#package : 'MethodProfiler',
	#tag : 'runWitnIn'
}

{ #category : 'installation' }
PrfRWIMethodIntercepter >> methodProxyClass [

	^ MpRWIMethodProxy
]
