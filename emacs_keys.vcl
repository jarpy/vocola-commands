# Emacs keybinds for Emacs, Bash, and more.

include functions.vcl;

(clang|cancel) = ctrl(g);
(unfuck|revert|nono) = ctrl(/);

hoover [word] = meta(backspace);
hoover (into|with|for) <_anything> = meta(backspace) $1;
hoover 1..99 [words] = {alt+backspace_$1};

search (back=r | forward=s) = ctrl($1);
search (back=r | forward=s) <_anything> = SendKeys(ctrl($1) Jarpy.Downcase($2));

kill word = meta(d);
kill to end [of line] = ctrl(k);

end [of] line = {ctrl+e};
start [of] line = {ctrl+a};
