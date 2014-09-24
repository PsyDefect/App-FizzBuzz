use v6;

class App::FizzBuzz
{
    has $.fizz is rw;
    has $.buzz is rw;
    has $.end is rw;

    method run
    {
        for 1..$.end
        {
            my $not_fizzbuzz = True;
            if self.is_fizz($_) {print "Fizz" and $not_fizzbuzz = False};
            if self.is_buzz($_) {print "Buzz" and $not_fizzbuzz = False};
            if $not_fizzbuzz {print $_};
            print "\n";

        }
        return 1;
    }

    method is_fizz (Int $current_val)
    {
        return $current_val % $.fizz == 0 ?? True !! False;
    }


    method is_buzz (Int $current_val)
    {
        return $current_val % $.buzz == 0 ?? True !! False;
    }
}
