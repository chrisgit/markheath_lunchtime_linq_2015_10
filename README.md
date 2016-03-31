Lunchtime Linq Challenge
========================

Code to solve the problems at http://markheath.net/post/lunchtime-linq-challenge-2

Just a bit of fun and a chance to improve some Ruby skills.

Incase the link is down here are the questions

Problem 1 Motor Sport Scores
==============================

In a motor sport competition, a player's points total for the season is the sum of all the points earned in each race, but the three worst results are not counted towards the total. Calculate the following player's score based on the points earned in each round:

"10,5,0,8,10,1,4,0,10,1"

Problem 2 Bishop Moves
========================

A chess board is an 8x8 grid, from a1 in the bottom left to h8 in the top right. A bishop can travel diagonally any number of squares. So for example a bishop on c5 can go to b4 or to a3 in one move. Create an enumerable sequence of board positions that includes every square a bishop can move to in one move on an empty chess board, if its starting position is c6. e.g. output would include b7, a8, b5, a4

Problem 3 Sampling
====================

The following sequence has 100 entries. Sample it by taking every 5th value and discarding the rest. The output should begin with 24,53,77,...

"0,6,12,18,24,30,36,42,48,53,58,63,68,72,77,80,84,87,90,92,95,96,98,99,99,100,99,99,98,96,95,92,90,87,84,80,77,72,68,63,58,53,48,42,36,30,24,18,12,6,0,-6,-12,-18,-24,-30,-36,-42,-48,-53,-58,-63,-68,-72,-77,-80,-84,-87,-90,-92,-95,-96,-98,-99,-99,-100,-99,-99,-98,-96,-95,-92,-90,-87,-84,-80,-77,-72,-68,-63,-58,-53,-48,-42,-36,-30,-24,-18,-12,-6"

Problem 4 Vote Winning Margin
===============================

Yes won the vote, but how many more Yes votes were there than No votes?

"Yes,Yes,No,Yes,No,Yes,No,No,No,Yes,Yes,Yes,Yes,No,Yes,No,No,Yes,Yes"

Problem 5 Counting Pets
=========================

Count how many have dogs, how many have cats, and how many have other pets. e.g. output would be a structure or sequence containing: Dog:5 Cat:3 Other:4

"Dog,Cat,Rabbit,Dog,Dog,Lizard,Cat,Cat,Dog,Rabbit,Guinea Pig,Dog"

Problem 6 Run Length Decoding
===============================

Expand strings in this form: A5B10CD3 to AAAAABBBBBBBBBBCDDD. Note that a letter may have 0 digits after it (C in the example), which means just repeat it once. It may also have more than one digit after it, such as B in this example, which is repeated 10 times. This one is a bit tricky, but there is a handy method in the .NET framework (not part of LINQ) which can help you get started.

"A5B10CD3"
