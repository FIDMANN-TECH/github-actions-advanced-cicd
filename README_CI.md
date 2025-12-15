# MarketPeak — Instructor Submission (CI/CD & Deployment)

**Repository:** github-actions-advanced-cicd  
**Live URL:** https://github-actions-advanced-cicd.onrender.com  
**DockerHub:** omoghenefid/marketpeak-cicd

## Objective
This submission documents a full CI/CD pipeline for a demo MarketPeak application. The goal is to demonstrate:
- Dockerization of a Node app
- CI pipeline (build, test, push)
- Deployment to Render
- Clear evidence (screenshots) for instructor grading

## Required Files (present in repo)
- `Dockerfile`
- `server.js`
- `app/index.html`, `app/styles.css`, `app/main.js`
- `.github/workflows/ci-cd.yml`
- `README.md`
- `README_CI.md`

## Step-by-step Execution (Git Bash)
1. Clone repository:
```bash
git clone https://github.com/<your-username>/github-actions-advanced-cicd.git
cd github-actions-advanced-cicd
```
2. Install deps and test locally:
```bash
npm ci
PORT=5000 node server.js
# open http://localhost:5000 to confirm UI and /health
```
3. Commit & push to GitHub:
```bash
git add .
git commit -m "Prepare submission: add UI, Dockerfile, README"
git push origin main
```


## Render steps (UI)
1. On Render dashboard → New → Web Service
2. Connect GitHub repo `github-actions-advanced-cicd`
3. Choose branch `main`
4. Runtime: Docker
5. Add Environment Variables (if needed): `API_URL`, `MY_SECRET_TOKEN` (do NOT add PORT)
6. Deploy — wait for logs, verify health


## Troubleshooting common issues
- **Blank page**: ensure `app/index.html` exists and server serves `/app`.
- **Dockerfile build errors**: check for stray quotes in comments and ensure `ARG PORT=3000` present.
- **Render "No open ports detected"**: confirm `EXPOSE $PORT` and server listens on `process.env.PORT`.

## Notes to instructor
This project is intentionally scaffolded to demonstrate CI/CD flow and is safe to run. Frontend uses placeholder images and static content for demonstration.

---