# Kubernetes Deployment Task – details-app

Create a deployment that will have the `details_app` application running inside your K8s cluster. Verify that you have:

---

## Use the correct container for the task

Steps:
- I chose `nginx:alpine` for the task.
- Created `details-app` by adding HTML code to the `src/` folder.
- Created a `Dockerfile` to verify the app runs correctly.
- Built and pushed the image to Docker Hub using `preparations.sh`.

---

## Pods receive IP addresses and ports and are accessible

Steps:
- Created a `Deployment` YAML pulling `details-app` from Docker Hub.
- Added a `Service` of type `NodePort` to expose it to the local machine via port `30081`.
- Learned that `nodePort` must be >30000 by default. You can change this range, but it requires restarting K3s with a custom flag.

---

## Deployment has a ReplicaSet of 2 pods

- Defined `replicas: 2` in the Deployment spec.

---

## Deployment is running and accessible

- Verified access using:
  curl http://127.0.0.1:30081

---

## Test ReplicaSet behavior

- Try deleting one pod:
  kubectl delete pod <pod-name>

- Confirm that Kubernetes automatically restarts it to maintain the replica count.

