# details-app Helm Chart

This Helm chart deploys the **details-app** application on a Kubernetes (K3s) cluster.

---

## What It Does

- Deploys a Deployment with 2 replicas of the **details-app** container
- Creates a NodePort Service exposing the app on port 30081
- Pulls the Docker image `meir25/details-app:latest` from Docker Hub

---

## Usage
### Clone the repository
```bash
git clone https://github.com/tomeir2105/details-app-chart.git
cd details-app-chart
```

### Install the chart

```bash
helm install my-details-app ./details-app-chart
```
### Uninstall the chart
```bash
helm uninstall my-details-app
```
