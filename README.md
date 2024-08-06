### ECS Deployment Pipeline
This repository contains a simple web application and a GitHub Actions CI/CD pipeline to deploy it to AWS ECS.

### Setup
## 1. Create and Clone the Repository
Copy code
git clone https://github.com/SagarJangid16/ecs-deployment-pipeline.git



## 2. Create IAM User and Assign Permissions
   
Go to the IAM Management Console.
Create a new IAM user with programmatic access.
Attach the following policies to the user:
AmazonECS_FullAccess
AmazonEC2ContainerRegistryFullAccess
AmazonEC2ContainerServiceFullAccess
Download the CSV file containing the Access Key ID and Secret Access Key.



## 3. Create an ECR Repository
Go to the Amazon ECR Console.
Click on Create repository.
Name your repository (e.g., my-web-application).
Note down the repository URI (e.g., 123456789012.dkr.ecr.us-west-2.amazonaws.com/my-web-application).



## 4. Build image and push over the Ecr repo through ci cd




## 5. Create an ECS Cluster and Service
// used free tier so taken this configuration can also use ALB
Go to the Amazon ECS Console.
Click on Clusters > Create Cluster.
Choose Networking only (for Fargate).
Configure the cluster name and settings, then create it.
Create a new task definition:
Choose Fargate.
Configure task size (e.g., 0.5GB memory, 0.25 vCPU).
Add container definitions pointing to your ECR image URI.
Create a service:
Choose your cluster.
Define your service name and number of tasks.
Configure the network settings and security groups to allow inbound and outbound traffic on port 8080.



## 6. Configure GitHub Secrets
Go to your GitHub repository.
Navigate to Settings > Secrets and variables > Actions > New repository secret.
Add the following secrets:
AWS_ACCESS_KEY_ID: Your IAM user’s access key ID.
AWS_SECRET_ACCESS_KEY: Your IAM user’s secret access key.
AWS_REGION: The AWS region of your ECS cluster (e.g., us-west-2).
ECR_REGISTRY: Your ECR registry URI (e.g., 123456789012.dkr.ecr.us-west-2.amazonaws.com).
ECR_REPOSITORY: Your ECR repository name (e.g., my-web-application).
ECS_CLUSTER: The name of your ECS cluster.
ECS_SERVICE: The name of your ECS service.
Usage


## Triggering the CI/CD Pipeline
Push changes to the master branch to trigger the CI/CD pipeline.

bash
Copy code
git add .
git commit -m "Your commit message"
git push origin main
Testing
The pipeline includes integration tests to verify the deployment.

## Rollback Functionality
Rollback functionality is implemented to revert the deployment in case of failures.

## Snapshots
Include snapshots of each job and step from the GitHub Actions pipeline.

## Repository URL
https://github.com/SagarJangid16/ecs-deployment-pipeline
