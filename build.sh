set -e

cd briefcase_javier_frontend
npm install
pip install gunicorn
pip install whitenoise
pip install django
pip install --force-reinstall -r ../requirements.txt
python manage.py collectstatic --noinput
npm run build --prod

rm -rf ../static/home/angular_build
mkdir -p ../static/home/angular_build
cp -r dist/briefcase_javier_frontend/* ../static/home/angular_build/
