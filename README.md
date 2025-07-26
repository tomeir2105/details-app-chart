# details-app using K3S

Details-App is a simple website served via Nginx and deployed to a Kubernetes cluster using Deployment method and Service.
On deploy the system will pull details-app from my DockerHub acount (meir25) and run two pods with the same app in the same cluster (using replica)

---

## Deploy

```bash
kubectl apply -f details-app.yaml

