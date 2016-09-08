#!/usr/bin/env bash

echo "netrc..."

cat >> ~/.netrc << EOF
machine api.heroku.com
  login $HEROKU_TOOLBELT_API_EMAIL
  password $HEROKU_TOOLBELT_API_PASSWORD
machine code.heroku.com
  login $HEROKU_TOOLBELT_API_EMAIL
  password $HEROKU_TOOLBELT_API_PASSWORD
EOF

echo "cat ~/.netrc"
cat ~/.netrc