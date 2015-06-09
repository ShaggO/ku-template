%!
% PostScript prologue for beamer theme Frederiksberg (and subthemes).
% Defines SUND watermark code.
% Relies on KUcommon.pro and KUcommonWmark.pro having been imported and on
% certain commands being written by KUcommon.sty.
% Also requires KUSUNDSigil.pro.
% Version 1, 2009/08/11
% Morten Larsen
%
% Water mark graphics:
/_kusund_wmark {
  _kuwmark_start
  _ku_sigil_bg_path
  _kusund_sigil_fg_path
  _kuwmark_end
} bind def
% Define watermark commands depending on pdfmark mode or not:
{
  /KUSUNDwmark_colordef {
    _kuwmark_colordef_first
    /id 19 string def
    id 0 ({KUSUNDwmark) putinterval
    id 12 tmpstr putinterval
    id 18 (}) putinterval
    [ /_objdef id cvx exec /BBox [96 508 178 608] /BP pdfmark
    save r g b setrgbcolor _kusund_wmark restore
    _kuwmark_colordef_last
  } bind def
  /KUSUND_wmark /KU_wmark load def
}?pdfmark
{
  /KUSUNDwmark_colordef /KUwmark_colordef load def
  /KUSUND_wmark {_kuwmark_color aload pop setrgbcolor _kusund_wmark} bind def
}?notpdfmark
