# Shared commands for web browsers

include functions.vcl;

tab 1..9 = ctrl($1);

Elastic Mail | Jarpy.net Mail:
  archive = SendKeys(y);
  inbox = SendKeys(gi);
