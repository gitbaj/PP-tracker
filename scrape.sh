#!/bin/bash
rm -rf site
mkdir -p site
xvfb-run --auto-servernum npx -y single-file-cli "https://pawpaddock.co.uk/terms-and-conditions" "site/index.html" \
  --browser-executable-path=/usr/bin/google-chrome \
  --browser-headless=false \
  --browser-args='["--no-sandbox","--disable-blink-features=AutomationControlled","--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"]' \
  --browser-wait-delay=10000
