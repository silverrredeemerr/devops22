MEDIA_PATH="/var/www/default/"
INDEX_PATH=$MEDIA_PATH"index.html"

apt-get update

sudo yum install -y epel-release

sudo yum install -y nginx

sudo systemctl start nginx
sudo systemctl enable nginx

sudo mkdir -p $MEDIA_PATH && sudo touch $INDEX_PATH

sudo cat /home/vagrant/shared/index.html > $INDEX_PATH

sudo cat /home/vagrant/shared/nginx.conf > /etc/nginx/nginx.conf

chcon -Rt httpd_sys_content_t $MEDIA_PATH

sudo systemctl restart nginx