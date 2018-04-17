# Voice commands for emacs

include emacs_keys.vcl;

switch buffer = meta(x) jarpy-goto-buffer {enter};
switch buffer <_anything> = ctrl(x) b $1 {enter};
one windows = ctrl(x) 1;
find file = ctrl(x) ctrl(f);

grep for <_anything> = meta(x) projectile-grep {enter} $1 {enter};


in vocola mode:
  [number] range (1..9) (1..9) = $1..$2;
