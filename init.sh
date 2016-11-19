sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

sudo pkill gunicorn
#sudo rm /etc/gunicorn.d/*
#sudo ln -s /home/box/web/etc/gunicorn_ask.conf /etc/gunicorn.d/ask
#sudo /etc/init.d/gunicorn restart


gunicorn -b 0.0.0.0:8080 --pythonpath /home/box/web/ hello &
gunicorn -b 0.0.0.0:8000 --pythonpath /home/box/web/ask/ ask.wsgi &
