include functions.vcl;

cmd(c) := {ctrl+b}:$c{enter};

[(switch|go)] tab 1..9 = {ctrl+b} $2;
[(switch|go)] tab <_anything> = cmd("select-window -t '$2'");
[(attach|switch|go)] session <_anything> = cmd("attach-session -t $2");

rename session <_anything> = cmd("rename-session $1");
rename tab <_anything> = "{ctrl+b},{backspace_100}$1{enter}";
new tab = {ctrl+b} c;
