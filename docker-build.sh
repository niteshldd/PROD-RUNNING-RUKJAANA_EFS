sudo docker build --rm -t nginx:1.1 .
sudo $(aws ecr get-login --no-include-email)
sudo docker tag nginx:1.1 920033848866.dkr.ecr.ap-south-1.amazonaws.com/nginx:1.2
sudo docker push 920033848866.dkr.ecr.ap-south-1.amazonaws.com/nginx:1.1
