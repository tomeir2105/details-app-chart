# details-app Helm Chart

This Helm chart deploys the **details-app** application on a Kubernetes (K3s) cluster.

---

## What It Does

- Deploys 2 replicas of the **details-app** container
- Creates a NodePort Service exposing the app on port 30081
- Pulls the Docker image `meir25/details-app:latest` from Docker Hub

---

## Usage
### Clone the repository
```bash
git clone https://github.com/tomeir2105/details-app-chart.git
```

### Install the chart

```bash
helm install my-details-app ./details-app-chart
```
### Verify the deployment
```bash
kubectl get deployment my-details-app     # check deployment status
kubectl get pods                          # check that the pods are up
kubectl get svc my-details-app            # check service and exposed ports
kubectl get nodes -o wide                 # get the node ip
```
### Use curl to check the app
```bash
curl http://<NODE-IP>:30081
```
### Uninstall the chart
```bash
helm uninstall my-details-app
```


