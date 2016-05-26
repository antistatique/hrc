set -e
GITURL=`git config remote.origin.url`
cd public
rm -rf .git/
git init
git remote add origin $GITURL
git add .
git commit -am "deploy"
git push origin master:build --force
