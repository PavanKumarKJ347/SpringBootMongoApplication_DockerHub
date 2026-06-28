
# End to End CICD Pipeline Project

## This Project Can be Used to Build an End to End CICD Pipeline.

## CICD Pipeline Stages

- Checkout Code from GitHub.
- Build Project.
- Build Docker Image.
- Push Docker Image to Docker Hub Registry.
- Remove Docker Image Locally in Jenkins.
- Update Docker Image Tag in Kubernetes Manifest.
- Deploy Application into Kubernetes Cluster.
- Send CICD Pipeline Execution Status to Slack.

### Tools and Technologies Used are Java, Git, GitHub, Maven, Jenkins, Docker, DockerHub, Kubernetes and Amazon Web Services.

# Project Execution
## Git Checkout
```bash
  git branch: 'main', url: 'https://github.com/DevOpsCloudAutomation/SpringbootMongoApplication_DockerHub.git'
```

## Build Project

**Build Automation Tool Maven Can be Used to Build This Project as This Project is Developed Using Java Programming Language.**

```bash
  mvn clean package
```
**Java and Maven Should be Installed as a Prerequisite to Build Project Code.**

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

## Application Should be Successfully Deployed to Kubernetes Cluster.