# This file contains the ……… Slang of the Raku Programming Language

#- start of generated part of localization ------------------------------------
#- Generated on 2024-01-12T22:28:46Z by ./update-localization
#- PLEASE DON'T CHANGE ANYTHING BELOW THIS LINE

role L10N::CY {
    use experimental :rakuast;
    token block-default { diffyg}
    token block-else { onte}
    token block-elsif { elsif}
    token block-for { for}
    token block-given { rhoddir}
    token block-if { os}
    token block-loop { loop}
    token block-orwith { orwith}
    token block-repeat { "ail-wneud"}
    token block-unless { unless}
    token block-until { hyd}
    token block-when { pan}
    token block-whenever { whenever}
    token block-while { while}
    token block-with { with}
    token block-without { without}
    token constraint-where { where}
    token infix-pcontp { "(cont)"}
    token infix-pelemp { "(elem)"}
    token infix-cff { "^ff"}
    token infix-cffc { "^ff^"}
    token infix-cfff { "^fff"}
    token infix-cfffc { "^fff^"}
    token infix-after { after}
    token infix-and { and}
    token infix-andthen { andthen}
    token infix-before { before}
    token infix-but { but}
    token infix-cmp { cmp}
    token infix-coll { coll}
    token infix-div { div}
    token infix-does { does}
    token infix-eq { pun}
    token infix-ff { ff}
    token infix-ffc { "ff^"}
    token infix-fff { fff}
    token infix-fffc { "fff^"}
    token infix-gcd { gcd}
    token infix-ge { ge}
    token infix-gt { gt}
    token infix-lcm { lcm}
    token infix-le { le}
    token infix-leg { leg}
    token infix-lt { lt}
    token infix-max { max}
    token infix-min { min}
    token infix-minmax { minmax}
    token infix-mod { mod}
    token infix-ne { ne}
    token infix-notandthen { notandthen}
    token infix-o { o}
    token infix-or { or}
    token infix-orelse { orelse}
    token infix-unicmp { unicmp}
    token infix-x { x}
    token infix-X { X}
    token infix-xx { xx}
    token infix-Z { Z}
    token meta-R { R}
    token meta-X { X}
    token meta-Z { Z}
    token modifier-for { for}
    token modifier-given { rhoddir}
    token modifier-if { if}
    token modifier-unless { unless}
    token modifier-until { hyd}
    token modifier-when { pan}
    token modifier-while { hyd}
    token modifier-with { with}
    token modifier-without { without}
    token multi-multi { multi}
    token multi-only { only}
    token multi-proto { proto}
    token package-class { class}
    token package-grammar { grammar}
    token package-module { module}
    token package-package { package}
    token package-role { role}
    token phaser-BEGIN { BEGIN}
    token phaser-CATCH { CATCH}
    token phaser-CHECK { CHECK}
    token phaser-CLOSE { CLOSE}
    token phaser-CONTROL { CONTROL}
    token phaser-DOC { DOC}
    token phaser-END { END}
    token phaser-ENTER { ENTER}
    token phaser-FIRST { FIRST}
    token phaser-INIT { INIT}
    token phaser-KEEP { KEEP}
    token phaser-LAST { LAST}
    token phaser-LEAVE { LEAVE}
    token phaser-NEXT { NEXT}
    token phaser-POST { POST}
    token phaser-PRE { PRE}
    token phaser-QUIT { QUIT}
    token phaser-UNDO { UNDO}
    token prefix-not { not}
    token prefix-so { so}
    token quote-lang-m { m}
    token quote-lang-ms { ms}
    token quote-lang-q { q}
    token quote-lang-Q { Q}
    token quote-lang-qq { qq}
    token quote-lang-rx { rx}
    token quote-lang-s { s}
    token quote-lang-S { S}
    token quote-lang-ss { ss}
    token quote-lang-Ss { Ss}
    token routine-method { method}
    token routine-regex { regex}
    token routine-rule { rule}
    token routine-sub { sub}
    token routine-submethod { submethod}
    token routine-token { token}
    token scope-anon { anon}
    token scope-augment { augment}
    token scope-constant { constant}
    token scope-has { has}
    token scope-HAS { HAS}
    token scope-my { fy}
    token scope-our { our}
    token scope-state { state}
    token scope-unit { unit}
    token stmt-prefix-also { also}
    token stmt-prefix-do { do}
    token stmt-prefix-eager { eager}
    token stmt-prefix-gather { gather}
    token stmt-prefix-hyper { hyper}
    token stmt-prefix-lazy { lazy}
    token stmt-prefix-quietly { quietly}
    token stmt-prefix-race { race}
    token stmt-prefix-react { react}
    token stmt-prefix-sink { sink}
    token stmt-prefix-start { start}
    token stmt-prefix-supply { supply}
    token stmt-prefix-try { try}
    token term-nano { nano}
    token term-now { now}
    token term-pi { pi}
    token term-rand { rand}
    token term-self { self}
    token term-tau { tau}
    token term-time { time}
    token traitmod-does { does}
    token traitmod-handles { handles}
    token traitmod-hides { hides}
    token traitmod-is { is}
    token traitmod-of { of}
    token traitmod-returns { returns}
    token traitmod-trusts { trusts}
    token typer-enum { enum}
    token typer-subset { subset}
    token use-import { import}
    token use-need { need}
    token use-no { no}
    token use-require { require}
    token use-use { defnydda}
    method core2ast {
        my %mapping = "unrhwy", "any", "cynhyrfu", "prompt", "dweuda", "say";
        my $ast := self.ast;
        my $name := $ast ?? $ast.simple-identifier !! self.Str;
        if %mapping{$name} -> $original {
            RakuAST::Name.from-identifier($original)
        }
        else {
            $ast // RakuAST::Name.from-identifier($name)
        }
    }
    method trait-is2ast {
        self.ast // RakuAST::Name.from-identifier(self.Str)
    }
    method adverb-pc2str (str $key) {
        my %mapping = "dileu", "delete";
        %mapping{$key} // $key
    }
    method adverb-q2str (str $key) {
        $key
    }
    method adverb-rx2str (str $key) {
        $key
    }
    method named2str (str $key) {
        $key
    }
    method pragma2str (str $key) {
        $key
    }
    method system2str (str $key) {
        $key
    }
}

# The EXPORT sub that actually does the slanging
my sub EXPORT($dontslang?) {
    unless $dontslang {
        my $LANG := $*LANG;
        $LANG.define_slang('MAIN',
          $LANG.slang_grammar('MAIN').^mixin(L10N::CY)
        );
    }

    BEGIN Map.new
}

#- PLEASE DON'T CHANGE ANYTHING ABOVE THIS LINE
#- end of generated part of localization --------------------------------------

# vim: expandtab shiftwidth=4
