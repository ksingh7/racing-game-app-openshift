Racing Game app on OpenShift
========================

## Prerequisites

- Login to OpenShift Console and grab the login credentials to login from CLI
- Login from CLI and create 2 namespaces/projects
  - `ksingh-dev`
- Navigate to Github > Repository > Settings > Secrets > Actions
- Set the values for the following GitHub Secrets
```
OPENSHIFT_SERVER_URL = https://api.s690b6hi.centralindia.aroapp.io:6443

OPENSHIFT_DEV_NAMESPACE = ksingh-dev
OPENSHIFT-DEV_TOKEN = sha256~_x1dCr4kLg5PGIHbG7WyUPM4OgpiogsEXXXXXcxxxxx

QUAY_CONTAINER_REGISTRY =
QUAY_DOCKER_CONFIIG_JSON_PULL_SECRET =
QUAY_DOCKER_PASSWORD =
QUAY_DOCKER_USERNAME =

```

> Note: You can also create service accounts for both dev and prod projets (namespaces) on OpenShift, and store the secrets in github > secrets\

- In case you are trying to deploy the app on Knative Serverless, make sure that
  - OpenShift Serverless Operator is installed on OpenShift
  - Knative Service Instance has been created on OpenShift Serverless

## Standard Deployment using GHA
- Steps to deploy on openshift

```
git clone https://github.com/ksingh7/racing-game-app-openshift.git
cd racing-game-app-openshift
git checkout dev
```
- Make your local changes (ex: just update Readme.md)
```
git add . ; git commit -am "fixes or new feature" ; git push origin dev
```
- Head to Github and create a new pull request from dev to main branch
- Head to Github Actions and monitor the deployment

## Knative Serving Deployment using GHA

```
git checkout knative-dev
```
- Make your local changes (ex: just update Readme.md)
```
git add . ; git commit -am "fixes or new feature" ; git push origin knative-dev
```
- Head to Github and create a new pull request from dev to main branch
- Head to Github Actions and monitor the deployment


## Credits
=======
Game developed by [Thibaut Despoulain](http://bkcore.com) . Thanks, we love you :)
adding a dummy line just for commit
adding a dummy line just for commit
adding a dummy line just for commit, welcome to The Dev Show :D