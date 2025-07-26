Create deployment that will have details_app application running inside your k8s verify that you have:

- used correct container for the task
steps to solve this stage -
-- I chose nginx:alpine for the task.
-- create details-app by adding the html code to the src folder
-- create Dockerfile to verify the app is running correctly 
-- build and push the image to dockerhub (preperations.sh)
- that pods recieve ip address and port and  can be accessed by them
-- then i created a deployment yaml of my implementation of details-app from dockerhub
-- added a service to expose the port to the local machine 30081
-- i learned that the nodePort must be (by default bigger then 30000) you can change it but must stop k3s for this.
- that your deployment has replicaset of 2 pods
-- using replica:2
- that your deployment is running and is accessable
-- curl http://127.0.0.1:30081 

Once you are done:
- try to kill one pod to verify that replicaset will revive the pod

