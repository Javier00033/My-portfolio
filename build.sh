set -e

cd briefcase_javier_frontend
npm install
npm run build --prod

rm -rf ../static/home/angular_build
mkdir -p ../static/home/angular_build
cp -r dist/briefcase_javier_frontend/* ../static/home/angular_build/
