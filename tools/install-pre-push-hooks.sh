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
  } >> $hookFile

  chmod +x $hookFile
  echo 'pre-push hook added'
else
  echo 'pre-push hook already present'
  echo 'check .git/hooks/pre-push for more details'
fi
