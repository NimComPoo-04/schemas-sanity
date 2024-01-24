#!/bin/sh

mkdir tmp
cd tmp

npm install
npm create sanity@latest

cat ../lib/sanity.api.ts | sed -e "s/<INSERT-SANITY-PROJECT-ID>/`cat sanity.config.ts | grep projectId`/" > ../lib/sanity.api.ts

cd ..
rm -rf tmp
