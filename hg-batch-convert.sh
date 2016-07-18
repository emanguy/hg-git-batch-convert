#!/bin/bash

IFS='
'

for hgrepo in `ls Input`
do
	# Make new directory
	mkdir Output/$hgrepo"-git"
	pushd Output/$hgrepo"-git"

	# Init empty git repo and convert from hg
	git init
	../../hg-to-git/hg-fast-export.sh -r ../../Input/$hgrepo

	# Convert all .hgignore to .gitignore in all branches
	for branch in `git branch | cut -c 3-`
	do
		git checkout $branch

		# Convert .hgignore to .gitignore if it exists
		if [[ -f ".hgignore" ]]
		then
			echo "Converting .hgignore in branch "$branch"..."
			../../hgignore-to-gitignore.sh
		else
			echo "No .hgignore found in branch "$branch". Skipping..."
		fi
	done

	popd
done
