BRANCH=$(git rev-parse --abbrev-ref HEAD)
COMMIT=$(git rev-list --reverse --ancestry-path master..queue | head -n 1)

git checkout master || exit 1
echo "Merging $COMMIT"
git merge --ff-only $COMMIT || exit 2
git push || exit 3
git checkout $BRANCH || exit 4
