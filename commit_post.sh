#!/bin/sh
OLD=_drafts/$1.md
NEW=_posts/`date '+%Y-%m-%d'`-$1.md
# don't commit the post if there are any TODOs
grep TODO $OLD && echo 'found TODOs; not committing' && exit 1
mv $OLD $NEW
git add $NEW
git commit -m $1
git push
