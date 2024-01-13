#!/usr/bin/env raku
use v6.d;
sub MAIN( $fn where *.IO.f = 'CY') {
    my @partials;
    my @tobetrans;
    my $line-num = 0;
    my $line-start;
    my $rem;
    for $fn.IO.lines {
        $line-start = (++$line-num).fmt( '%03d ' );
        if / ^ '#' / {
            @partials.push: $line-start ~ $_;
        }
        else {
            if / ^ ( \S+ ) \s+ / {
                @tobetrans.push: $line-start ~ $/.postmatch.trim;
                @partials.push: $line-start ~ $/[0].trim
            }
            else {
                @partials.push: $line-start ~ $_;
            }
        }
    }
    'partial.txt'.IO.spurt: @partials.join("\n");
    'tobetrans.txt'.IO.spurt: @tobetrans.join("\n");
}
