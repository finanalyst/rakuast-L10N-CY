# This file contains the ……… Slang of the Raku Programming Language

#- start of generated part of localization ------------------------------------
#- Generated on 2024-01-13T16:20:41Z by ./update-localization
#- PLEASE DON'T CHANGE ANYTHING BELOW THIS LINE

role L10N::CY {
    use experimental :rakuast;
    token block-default { rhagosodedig}
    token block-else { arall}
    token block-elsif { elsif}
    token block-for { "ar-gyfer"}
    token block-given { "a-roddwyd"}
    token block-if { os}
    token block-loop { dolen}
    token block-orwith { orwith}
    token block-repeat { ailadrodd}
    token block-unless { "oni-bai"}
    token block-until { hyd}
    token block-when { pryd}
    token block-whenever { "pryd-bynnag"}
    token block-while { tra}
    token block-with { gyda}
    token block-without { heb}
    token constraint-where { ble}
    token infix-pcontp { "(parhad)"}
    token infix-pelemp { "(elem)"}
    token infix-cff { "^ff"}
    token infix-cffc { "^ff^"}
    token infix-cfff { "^ffff"}
    token infix-cfffc { "^ffff^"}
    token infix-after { "ar-ôl"}
    token infix-and { a}
    token infix-andthen { "ac-yna"}
    token infix-before { "o-r-blaen"}
    token infix-but { ond}
    token infix-cmp { cmp}
    token infix-coll { coll}
    token infix-div { div}
    token infix-does { "yn-gwneud"}
    token infix-eq { eq}
    token infix-ff { ff}
    token infix-ffc { "ff^"}
    token infix-fff { ff}
    token infix-fffc { "ff^"}
    token infix-gcd { gcd}
    token infix-ge { ge}
    token infix-gt { gt}
    token infix-lcm { lcm}
    token infix-le { le}
    token infix-leg { goes}
    token infix-lt { lt}
    token infix-max { uchafswm}
    token infix-min { mun}
    token infix-minmax { minmax}
    token infix-mod { mod}
    token infix-ne { ne}
    token infix-notandthen { "ac-yna"}
    token infix-o { o}
    token infix-or { neu}
    token infix-orelse { arall}
    token infix-unicmp { unicmp}
    token infix-x { x}
    token infix-X { X}
    token infix-xx { xx}
    token infix-Z { Z}
    token meta-R { R}
    token meta-X { X}
    token meta-Z { Z}
    token modifier-for { am}
    token modifier-given { "a-roddwyd"}
    token modifier-if { os}
    token modifier-unless { "oni-bai"}
    token modifier-until { hyd}
    token modifier-when { pryd}
    token modifier-while { tra}
    token modifier-with { gyda}
    token modifier-without { heb}
    token multi-multi { aml}
    token multi-only { "yn-unig"}
    token multi-proto { proto}
    token package-class { dosbarth}
    token package-grammar { gramadeg}
    token package-module { modiwl}
    token package-package { pecyn}
    token package-role { rôl}
    token phaser-BEGIN { DECHRAU}
    token phaser-CATCH { DAL}
    token phaser-CHECK { GWIRODYDD}
    token phaser-CLOSE { GAU}
    token phaser-CONTROL { RHEOLAETH}
    token phaser-DOC { DOC}
    token phaser-END { DIWEDD}
    token phaser-ENTER { ENAID}
    token phaser-FIRST { CYNTAF}
    token phaser-INIT { INIT}
    token phaser-KEEP { CADW}
    token phaser-LAST { OLAF}
    token phaser-LEAVE { GADAEL}
    token phaser-NEXT { NESAF}
    token phaser-POST { SWYDD}
    token phaser-PRE { PRE}
    token phaser-QUIT { GADAEL}
    token phaser-UNDO { UNDOD}
    token prefix-not { ddim}
    token prefix-so { felly}
    token quote-lang-m { m}
    token quote-lang-ms { ms}
    token quote-lang-q { q}
    token quote-lang-Q { Cw}
    token quote-lang-qq { qq}
    token quote-lang-rx { rx}
    token quote-lang-s { s}
    token quote-lang-S { S}
    token quote-lang-ss { ss}
    token quote-lang-Ss { Ss}
    token routine-method { dull}
    token routine-regex { regex}
    token routine-rule { rheol}
    token routine-sub { is}
    token routine-submethod { "is-ddull"}
    token routine-token { tocyn}
    token scope-anon { anun}
    token scope-augment { cynydd}
    token scope-constant { cyson}
    token scope-has { wedi}
    token scope-HAS { HAS}
    token scope-my { fy}
    token scope-our { ein}
    token scope-state { wladwriaeth}
    token scope-unit { uned}
    token stmt-prefix-also { hefyd}
    token stmt-prefix-do { wneud}
    token stmt-prefix-eager { awyddus}
    token stmt-prefix-gather { casglu}
    token stmt-prefix-hyper { hybarch}
    token stmt-prefix-lazy { diog}
    token stmt-prefix-quietly { "yn-dawel"}
    token stmt-prefix-race { hil}
    token stmt-prefix-react { ymateb}
    token stmt-prefix-sink { suddo}
    token stmt-prefix-start { dechreu}
    token stmt-prefix-supply { cyflenwad}
    token stmt-prefix-try { ceisio}
    token term-nano { nano}
    token term-now { "yn-awr"}
    token term-pi { pi}
    token term-rand { rand}
    token term-self { hunan}
    token term-tau { tau}
    token term-time { amser}
    token traitmod-does { "yn-gwneud"}
    token traitmod-handles { llaw}
    token traitmod-hides { "o-guddfan"}
    token traitmod-is { yn}
    token traitmod-of { o}
    token traitmod-returns { "yn-dychwelyd"}
    token traitmod-trusts { ymddiriedolaethau}
    token typer-enum { enum}
    token typer-subset { "is-set"}
    token use-import { mewnforio}
    token use-need { angen}
    token use-no { na}
    token use-require { angen}
    token use-use { defnydd}
    method core2ast {
        my %mapping = "i-gyd", "all", "gwrthbarau", "antipairs", "unrhyw", "any", "atodiad", "append", "as", "ast", "atomig-ychwanegu-nol", "atomic-add-fetch", "atomig-aseinio", "atomic-assign", "atomig-dec-nol", "atomic-dec-fetch", "atomig-nol", "atomic-fetch", "atomig-nol-ychwanegu", "atomic-fetch-add", "atomig-nol-rhag", "atomic-fetch-dec", "atomig-nol-gan-gynnwys", "atomic-fetch-inc", "atomig-nol-is", "atomic-fetch-sub", "atomig-inc-nol", "atomic-inc-fetch", "atomig-is-nol", "atomic-sub-fetch", "aros", "await", "mechniaeth-allan", "bail-out", "bendithio", "bless", "ffrâm-alwad", "callframe", "o-alwadau", "callsame", "galwad-gyda", "callwith", "can--iawn", "can-ok", "categoreiddio", "categorize", "nenfwd", "ceiling", "golosg", "chars", "golwyth", "chop", "cr", "chr", "cr", "chrs", "dosbarthu", "classify", "agos", "close", "cmp-iawn", "cmp-ok", "o-godau", "codes", "crib", "comb", "o-gyfuniadau", "combinations", "yn-cynnwys", "contains", "croes", "cross", "dadgodio", "decode", "dwfnfap", "deepmap", "diffiniedig", "defined", "marw", "die", "yn-marw-iawn", "dies-ok", "yn-iawn", "does-ok", "wneud", "done", "map-hwyad", "duckmap", "elem", "elems", "alltud", "emit", "amgodio", "encode", "diwedd", "end", "diwedd-gyda", "ends-with", "eval-yn-marw-iawn", "eval-dies-ok", "eval-bywydau-iawn", "eval-lives-ok", "allanfa", "exit", "methu", "fail", "yn-methu-fel", "fails-like", "gyntaf", "first", "fflat", "flat", "fflip", "flip", "llawr", "floor", "fflangell", "flunk", "llawn-rwystr", "full-barrier", "cael", "get", "pen", "head", "mewnoliad", "indent", "mynegai", "index", "o-fynegeion", "indices", "yn", "is", "yn-tua", "is-approx", "yn-dwfn", "is-deeply", "yn-presennol", "is-prime", "isa-iawn", "isa-ok", "ddim", "isnt", "eitem", "item", "ymuno", "join", "cywair", "key", "allweddau", "keys", "diweddaf", "last", "alwad-olaf", "lastcall", "fel", "like", "llinell", "lines", "cyswllt", "link", "rhestr", "list", "o-fywydau-yn-iawn", "lives-ok", "gwneuthur", "make", "cyfatebol", "match", "uchafswm", "max", "mun", "min", "cymysgedd", "mix", "symud", "move", "newydd", "new", "nesaf", "next", "nesaf-galwad", "nextcallee", "yr-un-nesaf", "nextsame", "nesaf", "nextwith", "dim", "none", "ddim", "not", "nodyn", "note", "iawn", "ok", "un", "one", "agored", "open", "ordeiniad", "ords", "pâr", "pair", "o-barau", "pairs", "dosran-sylfaen", "parse-base", "pasio", "pass", "trynewidiad", "permutations", "pigo", "pick", "cynllun", "plan", "rhagymadrodd", "prepend", "symud-ymlaen", "proceed", "prydlon", "prompt", "gwthio", "push", "dodi", "put", "ail-wneud", "redo", "lleihau", "reduce", "ailadrodd", "repeated", "atteb", "repl", "dychwelyd", "return", "dychwelyd-rw", "return-rw", "gwrthwyneb", "reverse", "rhôl", "roll", "o-wreiddiau", "roots", "cylchdroi", "rotate", "rownd", "round", "rowndrobin", "roundrobin", "rhediad", "run", "o-r-un-achos", "samecase", "o-r-un-marc", "samemark", "yr-un-fath", "samewith", "dywedyd", "say", "plisgyn", "shell", "sifft", "shift", "arwydd", "sign", "arwydd", "signal", "sgip", "skip", "sgip-gorffwys", "skip-rest", "gwsg", "sleep", "cwsg-amserydd", "sleep-timer", "cwsg-hyd", "sleep-until", "felly", "so", "didoli", "sort", "sbeis", "splice", "hollt", "split", "sbrintf", "sprintf", "yspryd", "spurt", "sgwish", "squish", "traen", "srand", "yn-dechreu-gyda", "starts-with", "is-brawf", "subtest", "llwyddo", "succeed", "swm", "sum", "cynffon", "tail", "cymryd", "take", "cymryd-rw", "take-rw", "taflu-fel", "throws-like", "traws", "trans", "trim-arweiniol", "trim-leading", "trim-trael", "trim-trailing", "blaenor", "truncate", "anghymhariaeth", "unimatch", "unenw", "uninames", "unplyg", "uniprops", "unigryw", "unique", "cyffredinol", "unival", "o-gyfiredinau", "univals", "annhebyg", "unlike", "ddatgysylltu", "unlink", "defnydd-iawn", "use-ok", "gwerth", "value", "o-werthoedd", "values", "rhybuddio", "warn", "gair", "wordcase", "o-eiriau", "words";
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
        my %mapping = "wedi-eu-hadeiladu", "built", "copi", "copy", "rhagosodedig", "default", "ANGHOFIEDIG", "DEPRECATED", "cyfystyr", "equiv", "allforio", "export", "cudd-o-gefn", "hidden-from-backtrace", "cudd-o-DDEFNYDD", "hidden-from-USAGE", "gweithredu-manylion", "implementation-detail", "rhyddach", "looser", "nodol", "nodal", "pur", "pure", "amrwd", "raw", "rh", "rw", "prawf-haeriad", "test-assertion", "llymach", "tighter";
        my $ast := self.ast;
        my $name := $ast ?? $ast.simple-identifier !! self.Str;
        if %mapping{$name} -> $original {
            RakuAST::Name.from-identifier($original)
        }
        else {
            $ast // RakuAST::Name.from-identifier($name)
        }
    }
    method adverb-pc2str (str $key) {
        my %mapping = "dileu", "delete", "yn-bodoli", "exists";
        %mapping{$key} // $key
    }
    method adverb-q2str (str $key) {
        my %mapping = "arae", "array", "slaes", "backslash", "cau", "closure", "dwbl", "double", "gweithred", "exec", "fformat", "format", "swyddogaeth", "function", "awr", "h", "stwnsh", "hash", "o-ddyfyniadau", "quotewords", "sgalar", "scalar", "sengl", "single", "i", "to", "gw", "w", "o-eiriau", "words", "gw", "ww";
        %mapping{$key} // $key
    }
    method adverb-rx2str (str $key) {
        my %mapping = "parhau", "continue", "cyn", "ex", "hollgynhwysfawr", "exhaustive", "byd-eang", "global", "ff", "i", "cas-anwybyddu", "ignorecase", "marc-anwybyddu", "ignoremark", "eg", "nd", "fed", "nth", "trof", "ov", "gorgyffwrdd", "overlap", "t", "p", "post", "pos", "clicied", "ratchet", "ydd", "rd", "o-r-un-achos", "samecase", "o-r-un-marc", "samemark", "un-gofod", "samespace", "i", "to";
        %mapping{$key} // $key
    }
    method named2str (str $key) {
        my %mapping = "absoliwt", "absolute", "o-weithredoedd", "actions", "ap", "api", "atodiad", "append", "arg", "args", "fel", "as", "yn", "at", "awd", "auth", "enw-sylfaen", "basename", "swp", "batch", "gwaedu", "bleed", "darlledu", "broadcast", "dal", "catch", "siec", "check", "agos", "close", "gorchymyn", "command", "ategu", "complement", "yn-hollol", "completely", "parhau", "continue", "rheolaeth", "control", "cyfrif", "count", "creu", "create", "creu-yn-unig", "createonly", "dyddiad", "date", "dydd", "day", "gradd", "degree", "dileu", "delete", "cyfenw", "dirname", "elem", "elems", "wedi-u-hallyrru", "emit-timed", "amg", "enc", "amgodio", "encoding", "diwedd", "end", "cyfeiliorni", "err", "bob", "every", "cyn", "ex", "unigryw", "exclusive", "hollgynhwysfawr", "exhaustive", "yn-dod-i-ben", "expires", "teulu", "family", "enw-ffeil", "filename", "hidlydd", "filter", "fformatiwr", "formatter", "byd-eang", "global", "gwesteiwr", "host", "awr", "hour", "ff", "i", "cas-anwybyddu", "ignorecase", "marc-anwybyddu", "ignoremark", "i-mewn", "in", "i-mewn", "into", "saer", "joiner", "cywair", "key", "gwrando", "listen", "gwesteiwr-lleol", "localhost", "porthladd-lleol", "localport", "cyfateb", "match", "uno", "merge", "munud", "minute", "modd", "mode", "mis", "month", "enw", "name", "eg", "nd", "nl-yn", "nl-in", "nl-allan", "nl-out", "di-rwystro", "non-blocking", "nfed", "nth", "i-ffwrdd", "off", "allan", "out", "allan-byffer", "out-buffer", "oh", "ov", "gorgyffwrdd", "overlap", "t", "p", "rhan", "partial", "rhan", "parts", "porthladd", "port", "post", "pos", "cynradd", "primary", "cwarterol", "quaternary", "rh", "r", "ydd", "rd", "go-iawn", "real", "amnewid", "replacement", "rheol", "rule", "rh", "rw", "o-r-un-achos", "samecase", "un-gofod", "samespace", "trefnydd", "scheduler", "eiliad", "second", "eilradd", "secondary", "eiliad", "seconds", "wedi-eu-rhannu", "shared", "maint", "size", "MANYLION", "SPEC", "sboncen", "squash", "eg", "ss", "statws", "status", "llym", "strict", "tanysgrifiad", "subscript", "uwchysgrif", "superscript", "trydyddol", "tertiary", "prawf", "test", "eg", "th", "o-weithiau", "times", "cylchfa-amser", "timezone", "cyfieith-nl", "translate-nl", "blaenor", "truncate", "diweddariad", "update", "gwerth", "value", "vent-yn", "vent-at", "gyfrol", "volume", "gw", "w", "lle", "where", "ennill-verbatim-args", "win-verbatim-args", "flwyddyn", "year";
        %mapping{$key} // $key
    }
    method pragma2str (str $key) {
        my %mapping = "deinamig-gwmpas", "dynamic-scope", "angheuol", "fatal", "mewnol", "internals", "ddirym", "invocant", "MYNEGAI", "MONKEY", "MONKEY-GWELER-NO-EVAL", "MONKEY-SEE-NO-EVAL", "MYNEG-DDYN", "MONKEY-TYPING", "rhagluniaeth", "precompilation", "meddal", "soft", "llym", "strict", "olrhain", "trace", "o-newidynnau", "variables", "o-ofidiau", "worries";
        %mapping{$key} // $key
    }
    method system2str (str $key) {
        my %mapping = "DERBYNIADAU", "ACCEPTS", "ADEILADU", "BUILD", "GALWAD-ME", "CALL-ME", "COFIANT", "COERCE", "AWDL", "FALLBACK", "PRIF", "MAIN", "UWCHRADD-RAT", "UPGRADE-RAT";
        %mapping{$key} // $key
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
