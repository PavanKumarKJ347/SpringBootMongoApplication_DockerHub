
# End to End CICD Pipeline Project

## This Project can be used to Build an End to End CICD Pipeline.

## CICD Pipeline Stages

- Checkout Code from GitHub.
- Build Project.
- Build Docker Image.
- Push Docker Image to Docker Hub Registry.
- Remove Docker Image Locally in Jenkins.
- Update Docker Image Tag in Kubernetes Manifest.
- Deploy Application into Kubernetes Cluster.
- Send CICD Pipeline Execution Status to Slack.

### Tools and Technologies used are Java, Git, GitHub, Maven, Jenkins, Docker, DockerHub, Kubernetes and Amazon Web Services.

![CICD](https://github.com/DevOpsCloudAutomation/Java_Docker/assets/123757746/085ef572-bd9d-4d05-b710-4fc2a0646d39)

# Project Execution
## Git Checkout
```bash
  git branch: 'main', url: 'https://github.com/DevOpsCloudAutomation/SpringbootMongoApplication_DockerHub.git'
```

## Build Project

Build Automation Tool Maven can be used to build this project as this project is developed using Java Programming Language.

```bash
  mvn clean package
```
Note:
Java and Maven should be installed as a prerequisite to Build Project Code.

## Build Docker Image
```bash
  docker build -t devopscloudautomation/springbootmongo-application:${buildNumber} .
```

## Push Docker Image to Docker Hub Registry
```bash
  docker login -u devopscloudautomation -p ${Docker_Hub_Password}
  docker push devopscloudautomation/springbootmongo-application:${buildNumber}
```

## Remove Docker Image Locally in Jenkins Server
```bash
  docker rmi -f devopscloudautomation/springbootmongo-application:${buildNumber}
```

## Update Docker Image Tag in Kubernetes Manifest
```bash
  sed -i 's/Build_Tag/${Build_Number}/g' SpringBootMongo.yaml
```

## Deploy Application to Kubernetes Cluster
```bash
  kubectl apply -f SpringBootMongo.yaml
```
**Note**<br>
**Application Should be Successfully Deployed to Kubernetes Cluster.**