OLD=_drafts/$1.md
NEW=_posts/`date '+%Y-%m-%d'`-$1.md
mv $OLD $NEW
git add $NEW
git commit -m $1
git push
