#!/usr/bin/env bash
# Do not do this in master only in your own branch
# check what needs to be updated
npm install -g @angular/cli@latest
npm install @angular/cli@latest --save
git commit -a -m 'Update'
ng update @angular/cli
git commit -a -m 'Update'
ng update @angular/core
git commit -a -m 'Update'
ncu

# Update what you think should be updated
# do not upgrade zone.js and typescript they are udpated by ng update @angular/cli

npm install
npm update
npm prune
npm dedupe
git commit -a -m 'Update'
git push
npm run start
# Now test
