#!/bin/bash
git filter-branch --force --index-filter \
  'git rm --cached --ignore-unmatch src/main/webapp/WEB-INF/web.xml' \
  --prune-empty --tag-name-filter cat -- --all
