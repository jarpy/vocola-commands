# Shared commands for web browsers

include functions.vcl;

tab 1..9 = ctrl($1);
jump link = meta(.);
Google <_anything> = ctrl(k) $1 {enter};
GitHub (repository|repo) <_anything> = ctrl(l) http://github.com/elastic/$2 {enter};

search page = ctrl(f);
search page for <_anything> = ctrl(f) $1 {enter};

(reload|refresh) page = {shift+f5};
hard refresh = {shift+f5};

go back = {alt+left};
go forward = {alt+right};
close tab = {ctrl+w};

zoom out = ctrl(-);
zoom in = ctrl(+);

Elastic Mail | Jarpy.net Mail:
  (jump|switch) inbox = gi;

markdown code (block) = "```{enter}```{up}";
