# ECS Deployment Pipeline

This repository contains a simple web application and a GitHub Actions CI/CD pipeline to deploy it to AWS ECS.

## Setup

1. Clone the repository.
2. Create an ECR repository and note the repository URI.
3. Create an ECS cluster and service.
4. Configure GitHub secrets with your AWS credentials and ECS details.

## Usage

- Push changes to the `main` branch to trigger the CI/CD pipeline.

## Testing

- The pipeline includes integration tests to verify the deployment.
- Rollback functionality is implemented to revert the deployment in case of failures.

## Snapshots

Include snapshots of each job and step from the GitHub Actions pipeline.

## Repository URL

[https://github.com/SagarJangid16/ecs-deployment-pipeline](https://github.com/SagarJangid16/ecs-deployment-pipeline)
