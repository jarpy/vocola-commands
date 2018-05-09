# Global voice commands
include functions.vcl;

# Meta-commands
edit commands for <_anything> = ShellExecute('emacsclientw c:/Users/jarpy/Dropbox/Vocola/$1.vcl');
snore = GoToSleep();

# Universal keystrokes.
(spank|enter) = {enter};
tabular = {tab};

# Window management.
frame 1..0 = win($1);
frame 10 = win(0);

# Many of these are executed by AquaSnap.
frame (
  top=up |
  bottom=down |
  left |
  right |
  top left=home |
  top right=pgup |
  bottom left=end |
  bottom right=pgdn |
  max=enter |
  maximize=enter |
  min=del |
  minimize=del
) = win($1);

switch (
  terminal=1 |
  shell=1 |
  local=1 |
  chrome=2 |
  emacs=3 |
  x emacs=3 |
  linux emacs=3 |
  firefox=4 |
  fox=4 |
  slack=5 |
  powershell=6 |
  commander=6 |
  remote=7 |
  wopr=7 9|
  editor=8 |
  local emacs=8 |
  win emacs=8 |
  windows emacs=8 |
  kitty=9 |
  putty=9
) = win($1);

# Direct switching to useful apps.
switch (work=2|personal=4) (mail|email) = win($1) ctrl(1);
switch hangouts = AppBringUp(Firefox) ctrl(2);
[switch] slack channel <_anything> = AppBringUp(Slack) ctrl(k) $1 {enter};
[switch] terminal [tab] 1..9 = AppBringUp(mintty) ctrl(b) $1;
[switch] terminal [tab] <_anything> = AppBringUp(mintty) ctrl(b) ":select-window -t '$1'{enter}";
[switch] (firefox|fox) [tab] 1..9 = AppBringUp(Firefox) ctrl($2);
search [my] (work=2|personal=4) (mail|email) for <_anything> = win($1) ctrl(1);

# Text to Speech. Implemented by TextAloud.
(amy=a|brian=b|emma=e) read (that|this|[the] selection) [please] = ctrlAltShift($1);
(amy=a|brian=b|emma=e) read (all|all of that|the whole thing|back) [please] = ctrl(a) ctrlAltShift($1);

# String formatting.
bang <_anything> = !$1;
bang bang = !!;

backticks <_anything> = " `$1`";
brackets <_anything> = " [$1]";
braces <_anything> = " {$1}";
parens <_anything> = " ($1)";
soft string <_anything> = " $1";

backticks here <_anything> = "`$1`";
brackets here <_anything> = "[$1]";
braces here <_anything> = "{$1}";
parens here <_anything> = "($1)";
soft string here <_anything> = "$1";

timestamp now = Jarpy.UTCNow();


say yes = y {enter};
say no = n {enter};
