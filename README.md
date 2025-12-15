# 🚀 MarketPeak — Advanced CI/CD Pipeline with GitHub Actions, Docker & Render

**Repository:** `github-actions-advanced-cicd`  
**Live URL:** https://github-actions-advanced-cicd.onrender.com  
**DockerHub:** `omoghenefid/marketpeak-cicd`

---

## 📌 Project Objective

This project demonstrates a **complete, production-style CI/CD pipeline** for a demo **MarketPeak** web application using **GitHub Actions**, **Docker**, and **Render**.

The objective is to clearly showcase:

- Dockerization of a Node.js application  
- Automated CI pipeline (build, test, validation)  
- Automated Docker image build & push to Docker Hub  
- Automated deployment to Render  
- Professional Git workflow using feature branches and Pull Requests  
- Clear screenshot-based evidence for instructor grading  

---

## 🧠 What This Project Demonstrates

- Real-world CI/CD automation  
- GitHub Actions workflow design  
- Docker multi-stage builds  
- Secure secrets and environment variable management  
- API-based cloud deployment (Render)  
- Professional Git branching and PR workflow  
- Production health-check endpoint  

---

## 📂 Project Structure

```
.github/
  workflows/
    ci.yml
    docker-publish.yml
    deploy-render.yml
app/
  index.html
  styles.css
  main.js
Dockerfile
.dockerignore
.env.example
server.js
package.json
README.md
```

---

## 🔧 Technologies Used

- GitHub Actions  
- Docker & Docker Hub  
- Render.com  
- Node.js (Express)  
- HTML / CSS / JavaScript  

---

## 🧱 Application Overview

- Express backend serving static frontend from `/app`
- Runs on Render-assigned PORT
- Health endpoint available at `/health`
- Dockerized using a multi-stage Dockerfile

---

## 🐳 Dockerfile Summary

The Dockerfile uses a multi-stage build to improve security, performance, and image size.

---

## ⚙️ CI Pipeline Overview

The CI workflow runs on push and pull requests and installs dependencies, runs tests, and validates builds.

---

## 🐳 Docker Build & Push Pipeline

Triggered on push to main branch, builds and pushes Docker image to Docker Hub.

---

## 🌍 Render Deployment Pipeline

Automatically deploys updated Docker image to Render using API trigger.

---

## 🔀 Git Workflow

Feature branches → Pull Request → CI checks → Merge → Deployment.

---

## 🌐 Live Deployment Verification

- Homepage accessible via Render URL
- Health endpoint returns JSON status

---

## 🎉 Conclusion

This project delivers a complete CI/CD pipeline suitable for academic grading and professional DevOps portfolios.

## Below are screenshots of workflow:
![folder-structure](./img/00_project-folder-structure-vscode.png)
![github-workflows](./img/01_github-workflows-folder-vscode.png)
![ci-workflows](./img/02_ci-workflow-vscode.png)
![cd-docker-workflows](./img/03_docker-publish-workflow-vscode.png)
![cd-render-workflow](./img/04_deploy-render.yml.png)
![index-html-input](./img/05_modified_index_html_pushed.png)
![Dockerfile](./img/06_dockerfile-multistage-vscode.png)
![dockerignore](./img/07_dockerignore-file-vscode.png)
![env-example](./img/08_env-example-vscode.png)
![server-js](./img/09_serverjs-backend-code-vscode.png)
![package-json](./img/10_packagejson-vscode.png)
![indexhtml](./img/11_indexhtml-frontend-code-vscode.png)
![package-lock-json](./img/12_package_lock_json.png)
![npm-installation](./img/13_npm_installation.png)
![npm-ci](./img/14_npm_ci_installation.png)
![local-server-run](./img/15_local-server-run-vscode)
![gitt-create-push-feature-branch](./img/16_git-create-and-push-feature-branch.png)
![create-pull](./img/17_github_create_pull_request.jpeg)
![pr-merge](./img/18_pr-merge-confirmation-main-branch.jpeg)
![github-ci-workflow](./img/19_github_actions_workflows_ci_branch.jpeg)
![github-cd-dockerhub-workflow](./img/20_github_actions_workflow_cd_dockerhub.jpeg)
![github-cd-render-workflow](./img/21_github_actions_workflow_cd_render.jpeg)
![ci-workflow-main](./img/22_github_actions_workflows_ci_main.jpeg)
![dockerhub-image-published](./img/23_dockerhub-image-published-latest-tag.jpeg)
![render-log](./img/24_render_log_dockerfile_error.png)
![updated-dockerfile](./img/25_updated_dockerfile.png)
![render-log](./img/26_render_log_deployment_succcess.png)
![localhost-5000](./img/27_localhost_5000_browser.png)
![renderlive-app-homepage](./img/28_render-live-production-app-homepage.jpeg)
![render-health-check](./img/29_render-health-check-endpoint-success.jpeg)