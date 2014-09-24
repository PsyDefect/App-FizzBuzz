use Test;
use App::FizzBuzz;

plan 6;

my $test01 = App::FizzBuzz.new(
    end => 100,
    fizz => 3,
    buzz => 5
);

is $test01.is_fizz(3), True, "Fizz = 3 > True";
is $test01.is_fizz(9), True, "Fizz = 9 > True";
is $test01.is_buzz(5), True, "Buzz = 5 > True";
is $test01.is_buzz(10), True, "Buzz = 10 > True";

is $test01.is_fizz(1), False, "Fizz = 1 > False";
is $test01.is_buzz(2), False, "Buzz = 2 > False";
