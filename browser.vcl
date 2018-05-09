# Shared commands for web browsers

include functions.vcl;

tab 1..9 = ctrl($1);
jump link = meta(.);

go back = {alt+left};
go forward = {alt+right};

Elastic Mail | Jarpy.net Mail:
  archive = y;
  (jump|switch) inbox = gi;
