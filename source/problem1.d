module problems.problem1;
import std.stdio;


void problem1() {
	writeln("Problem 1");
	//If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
	//The sum of these multiples is 23.
	//Find the sum of all the multiples of 3 or 5 below 1000.

	int sum = 0;
	const int maxNum = 1000;
	for (int i = 3; i < maxNum; i +=3 )
	{
		sum += i;
	}
	for (int i = 5; i < maxNum; i +=5 )
	{
		sum += i;
	}
	writefln( "sum: %d", sum );	
}
