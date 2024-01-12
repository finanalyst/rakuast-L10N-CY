my $choice;
my $continue;
my @bad = <damn stupid nutcase>;

repeat {
    $choice = prompt 'Type something, like a number, or a string: ';
    say 'You typed in ｢' ~ ( $choice ~~ any( @bad ) ?? '*' x $choice.chars !! $choice) ~ '｣';
    given $choice {
        when 'dragon' { say "which is 'draig' in Welsh" }
        when any( @bad ) { say "wash your mouth with soap" }
        when IntStr { say "which evaluates to an integer ", $choice }
        when RatStr { say "which evaluates to a rational number ", $choice }
        default { say "which does not evaluate to a number "}
    }
    $continue = prompt 'Try again? If not type N: ';
} until $continue eq any(<N n>) ;

