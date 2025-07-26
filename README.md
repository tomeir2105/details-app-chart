# details-app using K3s

details-app is a simple static website served by Nginx and deployed to a Kubernetes (K3s) cluster using a Deployment and a NodePort Service.

Upon deployment, the cluster pulls the Docker image from Docker Hub (user: meir25) and starts two pods of the same app in the same cluster using a replica set.

---

## Docker Image

```
meir25/details-app:latest
```

---

## Optional deploy with music

```bash
sudo chmod +x ./deploy-with-music.sh
./deploy-with-music.sh
```

## Only Deploy (no music)

```bash
kubectl apply -f details-app.yaml
```

---

## Access the App

Once deployed, you can access the website using your node’s IP and the configured NodePort:

```
http://<NODE-IP>:30081
```

To find your node’s IP:

```bash
kubectl get nodes -o wide
```

---

## What's Included

- Deployment with 2 replicas
- Service of type NodePort on port 30081

