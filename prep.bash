#! /bin/bash

function gen {
  TST=$(date +%s)
  git switch -c $TST

  echo $TST > file.txt

  git add .
  git commit -m $TST
  git push -u origin $TST

  sleep .5
}

git reset --hard
git switch main

for i in $(seq 1 10);
do
    gen;
done


git switch main
