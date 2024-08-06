# project-ve3
# CI/CD Pipeline with GitHub Actions for AWS ECS

This repository contains a CI/CD pipeline to automate the deployment of a simple web application to AWS ECS using GitHub Actions.

## Setup

1. Clone the repository.
2. Create an ECR repository and an ECS cluster, service, and task definition in AWS.
3. Add the following secrets to your GitHub repository:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
   - `AWS_REGION`
   - `AWS_ACCOUNT_ID`
   - `ECR_REPOSITORY`
4. Update the GitHub Actions workflows with your ECS cluster and service names.
5. Push your code to the `main` branch to trigger the pipeline.

## Usage

- The pipeline builds and pushes a Docker image to ECR.
- The image is deployed to ECS.
- Integration tests are performed.
- If tests fail, a rollback is triggered.

## Testing the Pipeline

To test the pipeline, push changes to the `main` branch. Monitor the GitHub Actions tab to view the progress of the jobs.

## Rollback

If integration tests fail, the pipeline triggers a rollback to the previous stable version.

## License

This project is licensed under the MIT License.
