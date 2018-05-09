abort = {ctrl+c};

list_dir() := "Get-ChildItem | Select -first 20{enter}";

jump infra = "cd ~/src/infra{enter}";
jump terraform = "cd ~/src/infra/terraform{enter}";

chowder up = "cd ..{tab}{enter}" list_dir();
chowder <_anything> = "cd $1{tab}{enter}" list_dir();
(Lang Lang|Langley) = list_dir();
