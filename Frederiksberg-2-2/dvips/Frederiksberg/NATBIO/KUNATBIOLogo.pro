%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines NAT logo command.
% Relies on KUcommon.pro and KUNATBIOSigil.pro having been imported.
% Version 1, 2009/07/30
% Morten Larsen
%
/_kunatbio_logo {
gsave
0 842 translate
0.8 -0.8 scale
70 255 div 116 255 div 60 255 div setrgbcolor % Design guide
newpath
_ku_dots_path
_ku_sigil_bg_path
fill
1 setgray
newpath
_kunatbio_sigil_fg_path
fill
grestore
} bind def
% Define logo command:
[ /_objdef {kunatbio_logo} /BBox [59 408 205 610] /BP pdfmark
{save _kunatbio_logo restore}?pdfmark
[ /EP pdfmark
{/kunatbio_logo {[ {kunatbio_logo} /SP pdfmark} def}?pdfmark
{/kunatbio_logo /_kunatbio_logo load def}?notpdfmark
