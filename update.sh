#!/bin/bash
sh clear.sh
git pull
git add *
git commit
git push
cd ..
git pull
git add *
git commit
git push

