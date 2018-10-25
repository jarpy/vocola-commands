include functions.vcl;

cmd(c) := "{ctrl+b}:" Wait(200) Jarpy.Downcase($c) {enter};

[(switch|go)] tab 1..9 = {ctrl+b} Wait(200) $2;
#[(switch|go)] tab <number_word> = {ctrl+b} Wait(200) Jarpy.Numeralise($2);
#[(switch|go)] tab <_anything> = cmd("select-window -t '$2'");
[(attach|switch|go)] session <_anything> = cmd("attach-session -t $2");
(screen|sub) tab 0..9 = {ctrl+a} Wait(200) Jarpy.Numeralise($2);

rename session <_anything> = cmd("rename-session $1");
rename tab <_anything> = cmd("rename-window $1");
new tab = {ctrl+b} c;

Tmux detach = ctrl(b) d;
tmux attach = "tmux attach" {enter};
