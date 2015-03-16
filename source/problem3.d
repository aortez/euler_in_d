module problems.problem3;
import std.stdio;

void problem3()
{
	writeln( "The prime factors of 13195 are 5, 7, 13 and 29." );
	writeln( "What is the largest prime factor of the number 600851475143 ?" );
	
//	const long num = 13195;
	const long num = 600851475143;

	for ( long i = 2 ; i * i <= num; i++ )
	{
		const bool isFactor = num % i == 0;
		if ( isFactor )
		{ 
			bool isPrime = true;
			for ( int div = 2; div < i; div++ )
			{
				if ( i % div == 0 )
				{
					isPrime = false;
					break;
				}
			}
			if ( isPrime )
			{
				writeln( "prime factor: ", i );
			}
			else 
			{
				writeln( "normal factor: ", i );
			}
		}

		stdout.flush();
	}
	writeln("done");
}