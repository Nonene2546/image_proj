ไฟล์สำหรับ train/test yolo คือ YOLO.ipynb

สำหรับ webserver สามารถ clone repo 

running via yarn
yarn install
yarn start

running via docker
docker build -t yoloweb:latest .
docker run -p 8003:5173 yoloweb