use v6.d;
sub MAIN($fn where *.IO.f = 'CY') {
    exit note "Can't find file ｢partial.txt｣" unless 'partial.txt'.IO ~~ :e & :f;
    say 'Found ｢partial.txt｣';
    exit note "Can't find file ｢translated.txt｣" unless 'translated.txt'.IO ~~ :e & :f;
    say 'Found ｢translated.txt｣';
    my @partials = 'partial.txt'.IO.lines;
    my @translated = 'translated.txt'.IO.lines;
    exit note 'no content in ｢translated.txt｣' unless +@translated;
    say @translated[0].substr(0,3);
    my $start-line = @translated[0].substr(0,3) - 1 ;
    my $max-len = max(@partials[$start-line ..*]>>.chars);
    my $rv = '';
    my $tline = @translated.shift.trim;
    my $pline;
    for @partials {
        next unless / ^ (\d**3) /;
        $pline = ~$/[0].trim;
        $rv ~= ~$/.postmatch.trim ~ (' ' x ($max-len - ~$/.postmatch.chars));
        if ?( $tline ~~ / ^ $pline / ) {
            $rv ~= $tline.substr(4).subst(/ \s | \' /, '-', :g);
            $tline = @translated.shift if +@translated;
            # when no more translated, tline will retain last value, which will not match
        }
        $rv ~= "\n";
    }
    my $old-ext = '0';
    # find an unused filename
    $old-ext += 1 while ($fn ~ "_$old-ext").IO ~~ :e & :f ;
    $fn.IO.rename($fn ~ "_$old-ext", :createonly);
    $fn.IO.spurt: $rv;
}