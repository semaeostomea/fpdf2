#!/usr/bin/env bash
cd "$(dirname "$0")"
cd ..
coverage run setup.py test
coverage html && \
  (cd htmlcov && python -m SimpleHTTPServer 8080)
