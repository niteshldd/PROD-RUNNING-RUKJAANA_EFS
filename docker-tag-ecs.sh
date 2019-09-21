sudo docker build --rm -t nginx:1.0 .
sudo docker tag nginx:1.0 409888909294.dkr.ecr.ap-south-1.amazonaws.com/nginx:1.0
sudo $(aws ecr get-login --no-include-email)
sudo docker push 409888909294.dkr.ecr.ap-south-1.amazonaws.com/nginx:1.0
