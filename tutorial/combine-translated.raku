use v6.d;
sub MAIN( $fn where *.IO.f = 'CY') {
    exit note "Can't find file ｢partials.txt｣" unless 'partials.txt'.IO ~~ :e & :f;
    say 'Found ｢partials.txt｣';
    exit note "Can't find file ｢translated.txt｣" unless 'translated.txt'.IO ~~ :e & :f;
    say 'Found ｢translated.txt｣';
    my @partials = 'partials.txt'.IO.slurp;
    my $max-len = max( @partials[6..*-1]>>.chars );
    my $rv = '';
    my @translated = 'translated.txt'.IO.slurp;
    exit note 'no content in ｢translated.txt｣' unless +@translated;
    my $tline = shift @translated;
    my $pline;
    for @partials {
        next unless / ^ (\d)**3 /;
        $pline = ~$/[0];
        $rv ~= ~$/.post-match ~ (' ' x ($max-len - ~$/.postmatch.chars ) );
        if $tline ~~ / ^ $pline / {
            $rv ~= $tline.substr( 4 );
            $tline = @translated.shift if +@translated;
            # when no more translated, tline will retain last value, which will not match
        }
        $rv ~= "\n";
    }
    my $old = "$fn\_0"; # find an unused filename
    $old++ while $old.IO ~~ :e & :f;
    $fn.IO.rename($old, :createonly );
    $fn.IO.spurt: $rv;
}