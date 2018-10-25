abort = {ctrl+c};
(recursive|recursively) grep [for] <_anything> = "grep -ri $2 {enter}";
(recursive|recursively) delete <_anything> = "rm -rf $2";
grep that for <_anything> = "{ctrl+p} | grep -i '$1'{enter}";
ssh to wopr = "ssh wopr.elasticnet.co{enter}";
ssh to rasa = "ssh rasa{enter}";

search history [for] <_anything> = "history | grep -i $1" Wait(500) {enter};
(run history|rerun) <_anything> = "!" Jarpy.Numeralise($2) {enter};

jump infra = "cd ~/src/infra{enter}";
jump terraform = "cd ~/src/infra/terraform{enter}";
Jump source <_anything> = "cd ~/src/$1/{enter}";

chowder up = "cd ..{tab}{enter}ls -l | head -n 20{enter}";
#chowder <_anything> = "cd $1{tab}{enter}ls -l | head -n 20{enter}";
chowder <_anything> = SendKeys({alt+c} Jarpy.Downcase($1));
go to <_anything> = SendKeys(cd {enter} {alt+c} Jarpy.Downcase($1));

(Lang Lang|Langley) = "ls -al{enter}";

shell <_anything> = Jarpy.Downcase($1) Wait(500) {enter};
edit <_anything> = "e " Jarpy.Downcase($1) {enter};


vagrant SSH <_anything> = "vagrant ssh /" Jarpy.Downcase($1) "/" {enter};

run history <_anything> = ! Jarpy.Numeralise($1) {enter};

# String formatting
- <_anything> = "-$1";
-- <_anything> = "--$1";

# Kubernetes and Docker
cube <_anything> = "kubectl " Jarpy.Downcase($1);
