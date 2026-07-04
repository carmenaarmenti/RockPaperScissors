Class {
	#name : 'RockPaperScissorTest',
	#superclass : 'TestCase',
	#category : 'RockPaperScissors-Tests',
	#package : 'RockPaperScissors-Tests'
}

{ #category : 'tests' }
RockPaperScissorTest >> testRockPlayAgainstScissor [
	
	| rock scissor |
	rock := Rock new.
	scissor := Scissors new.
	
	self assert: (rock playAgainst: scissor) equals: rock 
]

{ #category : 'tests' }
RockPaperScissorTest >> testScissorsPlayAgainstPaper [
	
	| paper scissors |
	paper := Paper new.
	scissors := Scissors new.
	
	self assert: (scissors playAgainst: paper) equals: scissors
]

{ #category : 'tests' }
RockPaperScissorTest >> testScissorsPlayAgainstRock [
	
	| rock scissors |
	rock := Rock new.
	scissors := Scissors new.
	
	self assert: (scissors playAgainst: rock) equals: rock
]
