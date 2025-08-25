#!/bin/bash

# Nama repo
REPO_NAME="mensive3d"
USERNAME="<starputra>"   # ganti ini dengan username GitHub kamu

echo "🚀 Deploying $REPO_NAME to GitHub Pages..."

# Inisialisasi git (kalau belum ada)
if [ ! -d ".git" ]; then
  git init
fi

# Tambahkan file
git add .

# Commit
git commit -m "update site" || echo "✅ Sudah up to date"

# Pastikan branch main
git branch -M main

# Tambah remote origin kalau belum
if ! git remote | grep origin > /dev/null; then
  git remote add origin https://github.com/$USERNAME/$REPO_NAME.git
fi

# Push ke GitHub
git push -u origin main

echo "✅ Selesai!"
echo "Sekarang aktifkan GitHub Pages di Settings → Pages."
echo "URL: https://$USERNAME.github.io/$REPO_NAME/"
