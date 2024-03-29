# 1. test-job :-


# Assuming Dockerfile is in the root directory of your project
sudo docker rm -f $(sudo docker ps -qa)
sudo docker rmi -f $(sudo docker images -aq)
sudo docker build -t lonewolf1313/website:latest /home/ubuntu/workspace/test-job/

sudo docker run -p 85:80 -d lonewolf1313/website:latest

# Authenticate with Docker Hub using credentials from Jenkins Credentials
sudo docker login -u your_username -p your_password

# Push the image to Docker Hub
sudo docker push lonewolf1313/website:latest





# 2. deploy-job :-


kubectl delete -f deploy.yaml
kubectl delete -f service.yaml
kubectl apply -f deploy.yaml
kubectl apply -f service.yaml
