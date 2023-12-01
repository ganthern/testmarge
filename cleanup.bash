#! /bin/bash

branches=$(git branch | grep -v main | tr [:space:] " ")

git branch -D $branches
