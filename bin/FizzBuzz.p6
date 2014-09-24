use v6;
use App::FizzBuzz;

multi sub MAIN( Int :$end = 100, Int :$fizz = 3, Int :$buzz = 5 )
{
    my $app = App::FizzBuzz.new(
        end  => $end,
        fizz => $fizz,
        buzz => $buzz
    );

    $app.run;

    return 1; #just because
}

multi sub MAIN( Bool :$help )
{
    USAGE();
    return 1;
}

sub USAGE
{
    say qq:to"END_USAGE";

    Usage:
        perl6 FizzBuzz.p6

    Optional:
        --help           Show this usage info
        --end=[Int]      Specify when to stop
        --fizz=[Int]     Specify on what multiples to say "Fizz"
        --buzz=[Int]     Specify on what multiples to say "Buzz"

    Description:
        Full perl6 FizzBuzz application, just for funzies!

    END_USAGE
}
