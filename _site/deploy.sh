#!/bin/sh
jekyll --pygments
git add .
git commit -m 'blog'
git push -u origin master
