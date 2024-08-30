# Pre-requisites
## AWS CLI installed and configured
## EKSCTL installed
## Kubectl installed

# Create an EKS Cluster
## The set up can take up to 20 minutes to complete.
eksctl create cluster --name <cluster-name> --region <region> --nodes 3 --node-type t3.medium

# Update kubeconfig
aws eks update-kubeconfig --region <region> --name <cluster-name>

# Verify that kubectl can access the cluster by running
kubectl get nodes

# Apply the deployment to your cluster
kubectl apply -f nginx-deployment.yaml


# kubectl apply -f nginx-configmap.yaml
kubectl apply -f nginx-configmap.yaml

# kubectl apply -f nginx-service.yaml
kubectl apply -f nginx-service.yaml

# After a few minutes, obtain the external IP of the Nginx service. 
# Note the EXTERNAL-IP in the output.
kubectl get svc nginx-service

# Verify the Deployment
# Open a web browser and navigate to the external IP obtained in the previous step.
# You should see the message:
# "Hello from T2S. If you see this message it means that you have successfully set up a Kubernetes cluster on AWS using EKS. 
# You are a genius and God bless you!"

# Clean up
eksctl delete cluster --name <cluster-name> --region <region>

kubectl config get-contexts
kubectl config delete-context <context-name>

## Delete Load Balancers, Elastic Block Store (EBS) volumes.

