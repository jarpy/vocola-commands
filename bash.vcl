abort = {ctrl+c};
(recursive|recursively) grep [for] <_anything> = "grep -ri $2 {enter}";
(recursive|recursively) delete <_anything> = "rm -rf $2";
grep that for <_anything> = "{ctrl+p} | grep -i '$1'{enter}";
ssh to wopr = "ssh wopr.elasticnet.co{enter}";

jump infra = "cd ~/src/infra{enter}";
jump terraform = "cd ~/src/infra/terraform{enter}";

chowder up = "cd ..{tab}{enter}ls -l | head -n 20{enter}";
chowder <_anything> = "cd $1{tab}{enter}ls -l | head -n 20{enter}";
(Lang Lang|Langley) = "ls -al{enter}";
