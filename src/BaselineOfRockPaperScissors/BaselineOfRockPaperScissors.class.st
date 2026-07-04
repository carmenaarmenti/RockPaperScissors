Class {
	#name : 'BaselineOfRockPaperScissors',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRockPaperScissors',
	#package : 'BaselineOfRockPaperScissors'
}

{ #category : 'baselines' }
BaselineOfRockPaperScissors >> baseline: spec [

	<baseline>
	spec for: #common do: [
		
			spec preLoadDoIt: #preLoad.
			spec postLoadDoIt: #postLoad.
			
			spec
				baseline: 'MathRandomNumbers'
				with: [
				spec repository: 'github://PolyMathOrg/random-numbers:v1.x.x/src' ].

			spec
				package: 'RockPaperScissors';
				package: 'RockPaperScissors-Tests'
				with: [
					spec requires: #( 'RockPaperScissors' 'MathRandomNumbers' ) ].

			spec group: 'Core' with: #( RockPaperScissors ).
			spec group: 'Tests' with: #( 'RockPaperScissors-Tests' ).
			
			"by default it will load the package with tests. It's enough to call Tests because the tests installation requires the core package to be installed. When I install the script from metacello and I use the default method #load, it will call this group by default. If I want to specify a different group I can use the #load: method and specify the group I want"
			spec group: 'default' with: #('Tests')
			
			]
]

{ #category : 'script' }
BaselineOfRockPaperScissors >> postLoad [
	
	'RockPaperScissors loaded!' traceCr
]

{ #category : 'as yet unclassified' }
BaselineOfRockPaperScissors >> preLoad [
	
	Transcript open
]
