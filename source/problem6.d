module problems.problem6;
import std.stdio;

void problem6()
{
	writeln("The sum of the squares of the first ten natural numbers is:\n1^2 + 2^2 + ... + 10^2 = 385");
	writeln("The square of the sum of the first ten natural numbers is:\n(1 + 2 + ... + 10)^2 = 55^2 = 3025" );
	writeln("Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.");
	writeln("Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.");
		
	const int max = 100;
	const int sum_of_square = sumOfSquare( max );
	const int square_of_sum = squareOfSum( max );
	const int diff = square_of_sum - sum_of_square;
	writeln( "difference: ", diff );
}

int sumOfSquare( const int max )
{
	int sum_of_square = 0;
	for (int i = 1; i <= max; i++ )
	{ 
		sum_of_square += (i ^^ 2);
	}
	return sum_of_square;	
}

unittest 
{
	writeln( "test sumOfSquare");
	assert(385 == sumOfSquare(10));
}

int squareOfSum( const int max )
{
	int sum = 0;
	for (int i = 1; i <= max; i++ )
	{
		sum += i;
	}
	return sum ^^ 2;
}

unittest 
{
	writeln( "test squareOfSum");
	assert(3025 == squareOfSum(10));
}
