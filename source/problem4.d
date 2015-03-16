module problems.problem4;
import std.stdio;
import std.conv;

bool isPalandrome( const int num )
{
	const char[] s = to!string( num ).dup;
	const char[] r = s.dup.reverse; 
	if ( s == r ) 
	{
		return true;
	}
	return false;
}

unittest
{
	writeln("test isPalandrome");
	assert(isPalandrome(1) == true);
	assert(isPalandrome(11) == true);
	assert(isPalandrome(12) == false);
	assert(isPalandrome(126) == false);
}

void problem4() {
	writeln( "A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99." );
	writeln( "Find the largest palindrome made from the product of two 3-digit numbers." );
	int pal = 0;
	foreach (int i ; 100..1000 )
	{
		foreach ( int j ; 100..1000 )
		{
			const int product = i * j;
			if ( product >= pal && isPalandrome(product) )
			{
				pal = product;
				writeln( "largest palandrome: ", product );
			}
		}
	}
	return;
}