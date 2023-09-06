#!/bin/bash
hookFile='.git/hooks/pre-push'
gitDir='.git'

if [ ! -d $gitDir ]
then
  echo 'git not initialised yet'
  exit 1
elif [ ! -f $hookFile ]
then
  # append following CMD outputs to pre-push hook file
  {
    echo "if ! melos test;
    then
      echo 'melos test failed'
      exit 1
    fi"

    echo "if ! dart format -o none --set-exit-if-changed .;
    then
      echo 'incorrect dart formatting'
      exit 1
    fi"

    echo "if ! melos analyze;
    then
      echo 'melos analyze failed'
      exit 1
    fi"
  } >> $hookFile

  chmod +x $hookFile
  echo 'pre-push hook added'
else
  echo 'pre-push hook already present'
  echo 'check .git/hooks/pre-push for more details'
fi
