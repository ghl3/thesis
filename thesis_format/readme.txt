------------------------------------------------------
README.TXT -- Included in the thesisformat.zip bundle.
------------------------------------------------------

thesisformat.zip contains several files, but only *two*
compilable ones: thesis.tex and abstractpage.tex.

The former produces the thesis itself. It reads the auxiliary
files corresponding to abstract, introduction, chapters, etc.

The latter file produces a stand-alone abstract page of which
NYU requires several copies. It reads the abstract.tex file.
This way, if you need to make changes to your abstract, you
only need to edit one file (namely, abstract.tex). The changes
will be reflected in both thesis and abstractpage outputs.

The package "setspace" and a few others are necessary --- I
hope they are installed in the Courant system (I wouldn't know
--- I used my own TeX compiler).

I suggest you read thought the file thesis.tex, with attention
to the comments, to figure out how to use it. It is presently
set to produce a final "official NYU" version of the thesis.
But by commenting out some lines and uncommenting others, you
can make it into a "department" and/or "production" version,
which is not double-spaced and/or provides cross-referencing
utilities, among other things (the package "showlabels" is
extremely useful during production, for instance).

I also recommend that you place your custom \newcommand's and
\usepackage's in the definitions.tex file, not on the main
thesis.tex file. The abstractpage.tex file does *not* input the
definitions.tex file, but you have the option to have it do so
by uncommenting a line in that file.

Hope this is useful... Good luck!

Cheers, José (Jos\'e)
