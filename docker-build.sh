sudo docker build --rm -t nginx:1.4.5 .
sudo $(aws ecr get-login --no-include-email)
sudo docker tag nginx:1.4.5 920033848866.dkr.ecr.ap-south-1.amazonaws.com/nginx:1.4.5
sudo docker push 920033848866.dkr.ecr.ap-south-1.amazonaws.com/nginx:1.4.5
