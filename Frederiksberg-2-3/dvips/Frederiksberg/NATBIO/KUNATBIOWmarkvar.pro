%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines NAT watermark code, variant for dark background.
% Relies on KUcommon.pro and KUcommonWmark.pro having been imported and on
% certain commands being written by KUcommon.sty.
% Also requires KUNATBIOSigil.pro.
% Version 1, 2009/08/11
% Morten Larsen
%
% Water mark graphics:
/_kunatbio_wmark_var {
  _kuwmark_start
  _ku_sigil_ring_path
  _kunatbio_sigil_fg_path
  _kuwmark_end
} bind def
% Define watermark commands depending on pdfmark mode or not:
{
  /KUNATBIOwmarkvar_colordef {
    _kuwmark_colordef_first
    /id 21 string def
    id 0 ({KUNATBIOwmarkvar) putinterval
    id 14 tmpstr putinterval
    id 20 (}) putinterval
    [ /_objdef id cvx exec /BBox [96 508 178 608] /BP pdfmark
    save r g b setrgbcolor _kunatbio_wmark_var restore
    _kuwmark_colordef_last
  } bind def
  /KUNATBIO_wmark_var /KU_wmark_var load def
}?pdfmark
{
  /KUNATBIOwmarkvar_colordef /KUwmark_colordef load def
  /KUNATBIO_wmark_var {_kuwmark_color aload pop setrgbcolor _kunatbio_wmark_var} bind def
}?notpdfmark
