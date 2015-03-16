import std.algorithm;
import std.container;
import std.datetime;
import std.stdio;
import problems.problem1;
import problems.problem2;
import problems.problem3;
import problems.problem4;
import problems.problem5;

void main() 
{
	auto startTime = Clock.currTime();

	problem5();

	auto endTime = Clock.currTime();
	auto deltaT = endTime - startTime;
	writeln( "deltaT = ", deltaT );
}

auto findPrimesUpTo( long max )
{
	long candidates[];
	candidates.length = max;
	foreach( i, ref num; candidates )
	{
		num = i;
	}
	// try each divisor on all numbers in array
	for ( long testDivisor = 2; testDivisor < max; testDivisor++ )
	{
		// mark each non-prime that is a multiple of divisor
		for ( long candidatePrime = testDivisor * 2; candidatePrime < max; candidatePrime += testDivisor )
		{
			candidates[candidatePrime] = -1;
		}
	}
	auto c = filter!(a => a > -1)(candidates);
	
	return c;
}


