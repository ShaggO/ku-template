%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines NAT logo command, dark bakground variant.
% Relies on KUcommon.pro and KUNATBIOSigil.pro having been imported.
% Version 1, 2009/08/11
% Morten Larsen
%
/_kunatbio_logo_var {
gsave
0 842 translate
0.8 -0.8 scale
50 255 div 93 255 div 61 255 div setrgbcolor % Design guide
newpath
_ku_dots_path
_ku_sigil_bg_path
fill
1 setgray
newpath
_ku_sigil_ring_path
_ku_rings_path
_kunatbio_sigil_fg_path
fill
grestore
} bind def
% Define logo command:
[ /_objdef {kunatbio_logo_var} /BBox [59 408 205 610] /BP pdfmark
{save _kunatbio_logo_var restore}?pdfmark
[ /EP pdfmark
{/kunatbio_logo_var {[ {kunatbio_logo_var} /SP pdfmark} def}?pdfmark
{/kunatbio_logo_var /_kunatbio_logo_var load def}?notpdfmark
