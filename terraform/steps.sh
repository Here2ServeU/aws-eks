# Move to the folder, terraform, after cloning this repository
cd /terraform/ 

# Modify the variables.tf file as desired

# Initialize
terraform init

# Plan 
terraform plan

# Apply
terraform apply 

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
# "Hello from T2S. If you see this message, you have successfully set up a Kubernetes cluster on AWS using EKS. 
# You are a genius, and God bless you!"


### Clean Up
terraform destroy
