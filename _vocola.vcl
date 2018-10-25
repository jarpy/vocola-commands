# Global voice commands
include functions.vcl;
include mouse.vcl;

edit_file(f) := ShellExecute('emacsclientw $f');

# Meta-commands.
edit commands for <_anything> = edit_file('c:/Users/jarpy/Dropbox/Vocola/$1.vcl');
edit extensions = edit_file('c:/Users/jarpy/Dropbox/Vocola/vocola_ext_jarpy.py');
edit (words|vocabulary|dictionary) = edit_file('"C:\Users\jarpy\Dropbox\Dragon Naturally Speaking\Vocabulary Food\dictionary.txt"');
snore = GoToSleep();

# Universal keystrokes.
(spank|enter|transmit) = SendSystemKeys({enter});
(double|hard|twin) (spank|enter) = SendSystemKeys({enter}{enter});
tabular = SendSystemKeys({tab});
twin tabular = SendSystemKeys({tab}{tab});
reset = HeardWord(New, Paragraph);
dictation = SendSystemKeys({ctrl+shift+d});
transfer = HeardWord('Click transfer');
start menu <_anything> = SendSystemKeys({ctrl+esc} $1);
copy that = {ctrl+c};
paste that = {ctrl+v};
cut that = {ctrl+x};

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
  wopr=7 |
  editor=8 |
  local emacs=8 |
  win emacs=8 |
  windows emacs=8 |
  kitty=9 |
  putty=9 |
  pad=0 |
  notes=0 |
  DragonPad=0
) = win($1);

start menu <_anything> = SendSystemKeys({ctrl+esc}) $1;
(pick|choose|select) window = win(tab);

# Direct switching to useful apps.
switch (work=2|personal=4) (mail|email) = win($1) ctrl(1);
switch hangouts = AppBringUp(Firefox) ctrl(2);
[switch] slack channel <_anything> = AppBringUp(Slack) ctrl(k) $1 {enter};
[switch] terminal [tab] 0..9 = AppBringUp(mintty) ctrl(b) $1;
#[switch] terminal [tab] <_anything> = AppBringUp(mintty) ctrl(b) ":select-window -t '$1'{enter}";
[switch] (firefox|fox) [tab] 1..9 = AppBringUp(Firefox) ctrl($2);
[switch] chrome [tab] 1..9 = win(2) ctrl($1);
search [my] (work=2|personal=4) (mail|email) for <_anything> = win($1) ctrl(1);

# Text to Speech. Implemented by TextAloud.
(amy=a|brian=b|emma=e) read (that|this|[the] selection) [please] = ctrlAltShift($1);
(amy=a|brian=b|emma=e) read (all|all of that|the whole thing|back) [please] = ctrl(a) ctrlAltShift($1);

# String formatting.
bang <_anything> = !$1;
bang bang = !!;

downcase  <_anything> = Jarpy.Downcase($1);
snakecase <_anything> = Jarpy.Snakecase($1);
kebabcase <_anything> = Jarpy.Kebabcase($1);
camelcase <_anything> = Jarpy.Camelcase($1);

backticks   <_anything> = " `$1`";
brackets    <_anything> = " [$1]";
braces      <_anything> = " {$1}";
parens      <_anything> = " ($1)";
soft string <_anything> = ' "$1"';

(close|no space|tight) backticks   <_anything> = "`$2`";
(close|no space|tight) brackets    <_anything> = "[$2]";
(close|no space|tight) braces      <_anything> = "{$2}";
(close|no space|tight) parens      <_anything> = "($2)";
(close|no space|tight) soft string <_anything> = '"$2"';

backticks here   <_anything> = "`$1`";
brackets here    <_anything> = "[$1]";
braces here      <_anything> = "{$1}";
parens here      <_anything> = "($1)";
soft string here <_anything> = "$1";

timestamp now = Jarpy.UTCNow();
speak <_anything> = Jarpy.Speak($1);
read the news [please] = Jarpy.SpeakNews();
read [the] clipboard [please] = Jarpy.SpeakClipboard();

say yes = y {enter};
say no  = n {enter};
