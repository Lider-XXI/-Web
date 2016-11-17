sudo rm /home/etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

sudo gunicorn -b 0.0.0.0:8080 --workers=9 hello
