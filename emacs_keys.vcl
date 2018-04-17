# Emacs keybinds for Emacs, Bash, and more.

include functions.vcl;

hoover [word] = meta({backspace});
hoover (into|with|for) <_anything> = meta({backspace}) $1;
hoover 1..99 [words] = {alt+backspace_$1};

search (back=r | forward=s) = ctrl($1);
search (back=r | forward=s) <_anything> = ctrl($1) $2;

