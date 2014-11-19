BLOG_PATH=$HOME/Documents/CODE/my-personal-site/_site
GIT_SITE=$HOME/Documents/CODE/koek67.github.io

if [ $1 == '-l' ]; then
	cd $BLOG_PATH/../
	jekyll serve -l
else
	echo "Git status....."
	echo "--------------------------"
	echo
	cd $GIT_SITE
	git status
	echo
	echo
	echo "Adding files...."
	echo "--------------------------"
	echo
	# remove whatever is inside the git folder
	rm -rf koek67.github.io/*
	# add in the new files
	cp -R $BLOG_PATH/* $GIT_SITE
	cd $GIT_SITE
	git add -A
	git commit -m "$1"
	git push origin master
fi
