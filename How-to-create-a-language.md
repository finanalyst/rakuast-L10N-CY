# Creating a new language
> Actually creating a localization of an existing programming language in an existing human language


### Table of Contents
[Introduction](#introduction)
[Considerations](#considerations)
[The plan for y Ddraig (the dragon in Welsh)](#the-plan-for-y-ddraig-the-dragon-in-welsh)
[Constraints and first steps](#constraints-and-first-steps)
[Forwards into Draig and running](#forwards-into-draig-and-running)
[Completing the translation](#completing-the-translation)
[Backwards to canonical form](#backwards-to-canonical-form)
[Drawbacks](#drawbacks)

----
## Introduction
Nearly all programming languages that are widely used in the world today have English as their base human language.

This means that a young person living in a non-English environment must first learn English (if only a limited sub-set of English), and then learn the skills needed for coding. This puts the majority of the humanity at a disadvantage.

Would it not be useful to create programming languages that use the script and words of human languages, but which compile into programs that will run with state of the art computer software?

Here is how I created a Welsh cousin of Raku, and I called it **y Ddraig** - or ***The dragon***.[<sup>1</sup>](#1)

## Considerations
There are some practical obstacles to creating any new programming language, and here are some of the ameliorating reasons why the ***Raku Programming Language*** is a good choice to base a new one on.

*  Different human languages use different writing systems and most need extra letters not covered by the ASCII set

	*  The Unicode system has eliminated the problems of displaying and storing different writing systems.

	*  The Raku language has Unicode support at every level. Every number, operator, keyword, function etc can be written with Unicode symbols. There are a very few exceptions, such as `;`, `,`, and `{}`.

*  Different operating systems

	*  There are at least three major operating systems widely used in the world: Window, PC Linux, and Mac OS.

	*  Raku runs on all three

*  All professional programmers are proficient in English, and so can answer questions about program errors in English. The number of programmers speaking Welsh is quite small, and the same would be true for many other human languages.

	*  This is precisely the problem we are trying to resolve: making the coding profession a possibility for humanity as a whole. But there is a vicious circle, professional programmers work in English, so how can they help a person in another language?

	*  The circle can be broken if the interface language, which is the one that programmers work in, can be varied, whilst the code that is run on a computer is completely independent of the interface language.

	*  If the interface language can be easily changed, then a program coded in Welsh, but with a problem, can be easily translated (whilst continuing to work as before) into English. The problem can be resolved, corrected, and the solution changed (still working) back to Welsh.

## The plan for **y Ddraig**
Whilst the plan is to create ***y Ddraig*** as a language that can be used with as little English as possible, there are several stages:

*  First is to create a localization (L10N) of Raku, or a module called `L10N::CY`.

	*  Inside a Raku program, all that will be needed for a completely Welsh program is for the first line to be use L10N::CY;

	*  All subsequent lines will be in Welsh, but will compile and run as a normal Raku program.

	*  The program can be easily translated into English, and English Raku programs translated in to Welsh. Simple utilities are given below to do this.

*  Next, the operating system has to be adapted so that a executable called `draig` is available, which will also mean that in a graphic interface (GUI), double clicking on a file with a file-extension of `.draig` will run ***Raku*** with the _L10N::CY_ module already loaded. This is trivial.

## Constraints and first steps
For personal reasons, I stopped using Windows on my PC, and I use Ubuntu Linux exclusively. So, where there are terminal sessions, I shall be showing how I created ***Y ddraig*** using a Linux terminal.

Since ***Y ddraig*** is a Raku cousin, or technically a Raku localization, the Raku language needs to be installed. In addition, it needs to be a version of the language released after December 2023. Information about the installation of Raku, and its package manager **zef**, can be found [on the Raku website](https://raku.org).

The first stage is to create the `L10N::CY` module. It is simply a normal Raku module, which is then installed with the `zef` package manager.

Raku module development is conventionally done by creating a github repository. Working with ***git*** is quite simple for the basic functionality, but there is a long learning curve when working with others. But none of that is the topic here.

Elizabeth Mattijsen, who is responsible for all this Raku internationalization magic, has created a template internationalization module for the Klingon language (yep: aliens get to be the first to use localizations of a Terran computer language)[<sup>2</sup>](#2).

So I git cloned the Klingon, and created a github repo for the Welsh. My git nick is _finanalyst_, so here's the terminal code lines: 
```
git clone https://github.com/lizmat/L10N-TLH.git rakuast-L10N-Klingon 
git clone https://github.com/finanalyst/rakuast-L10N-CY.git rakuast-L10N-Welsh
```

In the following, I shall call Elizabeth's repo, the Klingon repo, and mine, the Welsh repo. If you want to create your own language, the convention being followed is to name the language according to an ISO 639-1 supported language code, at least for the foreseeable future. You should also think of an filename extension (like `.draig` here) for programs in the new language (Raku cousin).

The two critical parts of the module are `update-localization`, and a root text file which we will call the ***localization map***. It should be named by the language code. Here it is called `CY` for *Cymraeg* or the Welsh language, for Klingon, it is `TLH`.

The `update-localization` utility in from the Klingon repo looks for a repo root directory file with 2 or 3 upper case characters. This is taken as the *localization map* and is automatically converted into all the magical modules.

The biggest step is to translate the terms to be stored in `CY`. The template for the *localization map* can be found at [Github Raku localizations](https://github.com/Raku/L10N/TEMPLATE). To get this as a local text file, I used the following terminal code to download the template in to my working directory.
```
curl 'https://raw.githubusercontent.com/Raku/L10N/main/TEMPLATE' > CY
```
The pristine form of `CY` contains a few lines of comment (starting with the characters '# ', note the space), and then a number of sections starting with
```
# KEY        TRANSLATION
```
Within each section there is a key and then an English Raku keyword, eg.
```
#adverb-pc-delete         delete
```
Note that it has been commented out with single `#`. This means that the `update-localization` utility will ignore the line.

Now comes the translation part. Each significant commented line (a line with `#` and no space at the start) has two parts: a KEY and a TRANSLATION, with some spaces between them. The translation process is to substitute the English Raku keyword with the Welsh word, and remove the `#`. For example, the first significant line becomes 
```
adverb-pc-delete                 dileu
```

When starting the translation process, and to see how the system works, it is sufficient to translate a minimum number of keys. (Eg., for the *Draig* program below, I only need eleven words.)

Once I have enough key words for the program, all that is needed is to run `./update-localization`. This then creates a directory tree under `lib/`.

## Forwards into Draig and running

Here is a short program in Raku (English cousin), which we store in a file called 'simple.raku' in the root directory of the repo.

```
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

```
Try running it in a terminal where the working directory is the root directory of the repo, thus: 
```
raku simple.raku
```
If you input some words, it will tell you the input is a string, if you input something naughty (well only one of the three words 'damn stupid nutcase'), you will get another response, and then there are responses depending on whether the number is an integer or a rational.

The code uses 11 keywords, which I translated and put into `CY`. Obviously, there are many strings that form the user interface, and these are hard-coded in this program in English. We are concerned at the moment with the infrastructure keywords that form the programming language.

Now lets translate the Raku program using a simple Raku utility called `tr2draig`. 
We shall specify here that the Raku program is of the form `somename.raku` and that we want a Draig program of the form `somename.draig`. 

The utility is the following Raku script:

```raku
#!/usr/bin/env raku
sub MAIN(
  $filename where *.IO.f  #= source file to be localized to Welsh
) {
    $filename.IO.extension('draig').spurt: $filename.IO.slurp.AST.DEPARSE("CY")
}

```
Breaking the program down, `#!/usr/bin/env raku` is standard for a script with execute permission.

`$filename where *.IO.f  #= ...` is a nice Raku idiom for a program called from a terminal. The program expects a string that names a file. It checks that the filename exists and is of type 'f'. If not, then an error message will be provided from the comment following `#=`.

`$filename.IO.extension('draig').spurt: ` takes the filename, creates a new file with the extension 'draig' replacing the previous extension (which was 'raku'), then spurts text into it, the text it uses being generated by the expression after the `:`.

`$filename.IO.slurp.AST.DEPARSE("CY")` takes the filename (which has extension 'raku'), makes it into a filehandle, slurps (sucks) in the text that is in the file, parses the text as a Raku program into an Abstract Symbol Tree (AST), and then `deparses` the symbol tree using the new Welsh keywords into a new program with Welsh.

> For reasons related to distributing Raku software, I have placed the utility in the `bin/` directory. There are two ways to get a copy of these files, either by creating a clone of my Github repository (the url is given above), or by installing the Raku distribution, as `zef install RakuAST-L10N-CY`. If *zef* is set up in a typical way, then the utilities below can be run without specifying the path.

The translation utility is run like this
```
bin/tr2draig simple.raku
```

This produces a file `simple.draig`, which contains
```
fy $choice;
fy $continue;
fy @bad = <damn stupid nutcase>;
ailadrodd {
    $choice = prydlon "Type something, like a number, or a string: ";
    dywedyd "You typed in ｢" ~ ($choice ~~ unrhyw(@bad) ?? "*" x $choice.golosg !! $choice) ~ "｣";
    a-roddwyd $choice {
        pryd "dragon" {
            dywedyd "which is 'draig' in Welsh"
        }
        pryd unrhyw(@bad) {
            dywedyd "wash your mouth with soap"
        }
        pryd IntStr {
            dywedyd "which evaluates to an integer ", $choice
        }
        pryd RatStr {
            dywedyd "which evaluates to a rational number ", $choice
        }
        rhagosodedig {
            dywedyd "which does not evaluate to a number "
        }
    }
    $continue = prydlon "Try again? If not type N: "
} hyd $continue eq unrhyw(<N n>)

```

Now we want a way to run `draig` programs. The easiest way is create another Raku program `draig`, which we place in the `bin/` directory. `bin/draig` has the following content:
```raku
#!/usr/bin/env raku
sub draig(*@_) {
    %*ENV<RAKUDO_RAKUAST> = 1;
    %*ENV<RAKUDO_OPT>     = '-ML10N::CY';
    run $*EXECUTABLE, @_;
}

multi sub MAIN() {
    draig
}

multi sub MAIN(
  $filename where *.IO.f  #= source file to be run in Welsh
) {
    draig $filename
}
```
Here's a gloss of the program:
`sub draig(*@_) {... ` This is a helper subroutine called later. It sets up environment variables, and preloads the localization module, before running Raku with the Welsh keywords. 

`multi sub MAIN()` runs the sub draig (above) when no program is given. This puts the user into a REPL, where statements can be input directly, parsed and run immediately. However, `draig` will run using the Welsh keywords.

`multi sub MAIN(
  $filename where *.IO.f  #= source file to be run in Welsh
)` handles the case when `draig` is given a filename. As explained above, the filename is tested for existence.

Now try running `bin/draig simple.draig` in a terminal.

> If the `RakuAST-L10N-CY` distribution has been installed with `zef`, then all you will need is `draig simple.draig`.

The running code produces exactly the same output as the English Raku program. The user interface output is still in English, and for completeness, I should translate all of the text strings to Welsh as well.

## Completing the translation
At this point, we can translate any English version of a Raku program into a Draig program, and `draig` will run it, but only if the Raku program uses the 11 keywords I translated.

In order to create a full localization, all of the **Translation** values need to be converted to Welsh. The **first** step (and I really must re-emphasise it is a first step) is to use an automated translation tool. A correct localization will need first-language Welsh speakers to go through the `CY` file and correct the translations.

> At the time of writing, the localization has not been properly verified, so it has not yet been added to the official Raku localizations.

For the automated translation, I have created the directory `automation/`. I again downloaded the TEMPLATE into a `CY` file in the `automation/` directory.

I have written some automation helper utilities, namely:
1. `find-untranslated`, takes a CY file and splits it into two new files, with line numbers at the start of each line to help match later. One file is `partial.txt` with the starting key and comment lines, and the second file is `to-be-translated.txt`. Both contain approximately 700 lines.
1. `combine-translated`, takes `partial.txt` and another file `translated.txt` (see below) to create a new CY file.

Next I copy/pasted the lines for translation (from the file `to-be-translated.txt` into [Google's translate to Welsh page](https://translate.google.co.uk/?sl=auto&amp;tl=cy&amp;op=translate). The operation took a couple of copy/pastes due to size limitations, but the text is not overly large.

The translated text can be copied straight back to a new file (translated.txt), and then recombined with `partials.txt` to create CY.

## Backwards to canonical form

As mentioned above, suppose a Welsh-speaker using `y Ddraig` 
runs into a programming problem, a syntax error or logic not working as the programmer assumes. An English speaking programmer will probably not be able to help. 

But ... *.draig* program can be retranslated back to the canonical form of Raku. This is done by a utility called `tr2raku`. It is almost the inverse of `tr2draig`, but instead of replacing the file extension `.draig` with `.raku`, we add it on to the filename so that its clear it is a canonicalisation of a Raku cousin.

The utility `bin/tr2raku` contains the following contents.
```
#!/usr/bin/env raku
sub MAIN(
 $filename where *.IO.f  #= Welsh source file to be turned to canonical form
) {
   $filename.IO.extension('raku', :0parts).spurt: $filename.IO.slurp.AST("CY").DEPARSE
}
```
The difference can be seen that the language signifier (`CY`) is a parameter to the `AST` method, rather than the `DEPARSE` method. 

There should be no reason why this recipe cannot be applied to Mandarin, Hindi, or Japanese.

## Drawbacks

The problems stem from the development history of Raku. Error messages are in English, and so Raku cousins, like Draig, will have English error messages. 

The problem is not insurmountable, but it will take a lot of translator hours.

Another problem is that helper modules, for example, `JSON::Fast`, which imports/exports structured data from/to  `.json` files into Raku data structures. The module has two main methods `to-json` and `from-json`. These names are set by the module, not by Raku.

A program in `y Ddraig` will be able to access all Raku modules without restriction, but it will need to use the canonical (English) names.

However, if many Raku localizations come into being, and a user base for them develops, these are all soluble problems.


----
Footnotes
###### 1
A reader may wonder why the language is *Y ddraig*, but *draig* is given in dictionaries as the translation for *dragon*. Well ..., *draig* is a feminine word, and the definite particle *Y* triggers a mutation in the next feminine word, so *d* mutates to *dd*.
###### 2
My next project is to create a localization with Egyptian hieroglyphs 