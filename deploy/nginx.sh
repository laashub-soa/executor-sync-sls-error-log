yum install -y nginx

tee /etc/nginx/nginx.conf <<-'EOF'
user nginx;
worker_processes auto;
pid /run/nginx.pid;
events {
    worker_connections 1024;
}
http {
    access_log off;
    access_log  /dev/null;
    sendfile            on;
    tcp_nopush          on;
    tcp_nodelay         on;
    keepalive_timeout   65;
    types_hash_max_size 2048;
    include             /etc/nginx/mime.types;
    default_type        application/octet-stream;
server {
listen       41111;
location / {
proxy_pass http://192.168.5.5:8080;
}
}
}
EOF

systemctl stop   nginx
systemctl start  nginx
systemctl status nginx
systemctl enable nginx

journalctl -xefu nginx