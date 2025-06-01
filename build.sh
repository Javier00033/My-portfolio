#!/bin/bash
set -e

pip install --upgrade pip
pip install -r requirements.txt

# 1. Construir el frontend Angular
cd briefcase_javier_frontend
npm install
npm run build --configuration=production
cd ..

# 2. Mover el build de Angular al static de Django
rm -rf static/home/angular_build
mkdir -p static/home/angular_build
cp -r briefcase_javier_frontend/dist/briefcase_javier_frontend/* static/home/angular_build/

# 3. Recolectar archivos estáticos de Django
python manage.py collectstatic --noinput
