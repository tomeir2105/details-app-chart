# Task

The task is to create a helm chart for my details-app in k3s.

## Steps I Took to Create a Helm Chart for details-app on K3s
### Reviewed the original Kubernetes files - details-app contains 2 pods and expose it on a NodePort.
### Created the Helm chart structure
```bash
helm create details-app-chart
```
### cleaned up unnecessary files.
### Converted YAML files into templates
### Replaced fixed values like image and ports with variables in templates/,
```bash 
image: "{{ .Values.image.repository }}:{{ .Values.image.tag }}"
```
### Set default values in values.yaml:
```bash
replicaCount: 2
image:
  repository: meir25/details-app
  tag: latest
service:
  nodePort: 30081
```
### Tested the Helm chart on K3s
### Installed and verified pods:
```bash
helm install my-details-app ./details-app-chart
kubectl get pods
```
