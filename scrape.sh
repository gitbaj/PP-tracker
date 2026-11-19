#!/bin/bash
mkdir -p site
npx -y single-file-cli "https://pawpaddock.co.uk/terms-and-conditions" \
  --browser-executable-path=/usr/bin/google-chrome \
  --browser-args='["--no-sandbox"]' \
  --browser-wait-until=networkidle0
