#!/usr/bin/env bash
# Build script: injeta env vars nos placeholders do index.html
# Credenciais ficam APENAS no Vercel — nunca no repositório.

set -e

mkdir -p dist

sed \
  -e "s|__DASHBOARD_SB_URL__|${DASHBOARD_SB_URL}|g" \
  -e "s|__DASHBOARD_SB_KEY__|${DASHBOARD_SB_KEY}|g" \
  -e "s|__AC_SB_URL__|${AC_SB_URL}|g" \
  -e "s|__AC_SB_KEY__|${AC_SB_KEY}|g" \
  index.html > dist/index.html

echo "Build concluído — dist/index.html gerado com credenciais injetadas."
