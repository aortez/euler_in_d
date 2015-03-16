module problems.problem5;
import std.stdio;

void problem5() 
{
	writeln( "2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder." );
	writeln( "What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20? ");
	
	const int maxDiv = 20;
	int smallest = 0;
	for (int n = 1; smallest == 0; n++ )
	{
		bool isDiv = true;
		for ( int div = 1; div <= maxDiv; div++ )
		{			
			isDiv = ( n % div == 0 );
			if (!isDiv) break;
		}
		if ( isDiv )
		{
			smallest = n;
		}
	}
	writeln( smallest );
}
