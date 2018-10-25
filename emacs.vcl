# Voice commands for emacs

include emacs_keys.vcl;

zoom in = ctrl(+);
Zoom out = ctrl(-);

one_window() := {ctrl+x} 1;
split_vertical() := {ctrl+x} 2;
split_horizontal() := {ctrl+x} 3;
balance_windows() := {ctrl+x} +;

metaxu <_anything> = {alt+x} $1 Wait(1000) {enter};


start of buffer = meta(<);
end of buffer = meta(>);

fullscreen = {f11};
start server = {alt+x} server-start Wait(1000) {enter};
set mark = {ctrl+space};
open line = {alt+o};
open line above = {alt+o};

switch buffer = meta(x) jarpy-goto-buffer {enter};
switch buffer <_anything> = ctrl(x) b $1 {enter};

close window = ctrl(x) 0;
split vertical = split_vertical();
split (horizontal|window) = split_horizontal();
one window = one_window();
two windows [horizontal]= one_window() split_horizontal();
two windows vertical = one_window() split_vertical();
three windows = one_window() split_vertical() split_horizontal() balance_windows();
four windows = one_window() split_vertical() split_horizontal() {shift+down} split_horizontal() balance_windows();
six windows = one_window() split_vertical() split_horizontal() split_horizontal() {shift+down} split_horizontal() split_horizontal() balance_windows();
balance windows = balance_windows();
kill buffer = ctrl(x) k {enter};

find file = ctrl(x) ctrl(f);
open recent (file) = ctrl(x) ctrl(f) ctrl(f) ctrl(r);
save (file|buffer) = ctrl(x) ctrl(s);

window (right|left|up|down) = shift($1);

jump line = meta(x) jarpy-goto-line {enter};
jump word = meta(x) jarpy-goto-word {enter};
jump window = meta(x) ace-window {enter};
[jump] window 1..9 = meta(x) ace-window {enter} $1;
jump buffer = meta(x) jarpy-goto-buffer {enter};

kill line = {ctrl+shift+backspace};
kill 1..99 lines = ctrl(u) $1 {ctrl+shift+backspace};
yank = ctrl(y);
yank again = meta(y);

expand = meta(/);

grep for <_anything> = meta(x) projectile-grep {enter} $1 {enter};

in vocola mode:
  [number] range (1..9) (1..9) = $1..$2;
  Anything = " <_anything>";
  define <_anything> = "$1 = ;{left}";
  control <_anything> = 'ctrl($1)';
  meta <_anything> = 'meta($1)';
  enter key = "{enter" {right};

in python mode:
  comment <_anything> = "{tab}# $1";
  function call <_anything> = Jarpy.Snakecase($1) '()';
  loop (for|over) <_anything> in <_anything> = 'for ' Jarpy.Snakecase($2) ' in ' Jarpy.Snakecase($3) ':{tab}';
  <_anything> method <_anything> = Jarpy.Camelcase($1) '.' Jarpy.Camelcase($2) '()';
  method <_anything> = '.' Jarpy.Camelcase($1) '()';
