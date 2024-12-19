CI/CD AND KUBERNETES
This project shows a simple Kubernetes deployment and CI/CD pipeline. 
I used Helm Charts to deploy a sample application on Kubernetes after containerizing it with Docker.
Along the way, I encountered several issues, which I’ve documented here.

OVERVIEW
-Containerizing the application using Docker.
-Deploying the application on Kubernetes using Helm Charts.
-Automating deployments with a basic CI/CD pipeline.
-Handling Ingress and DNS configurations for external access.
-Docker, Kubernetes, Helm, GitHub are used in this project.

CHALLENGES AND SOLUTIONS
1.Ingress and DNS Issues:
Problem: The Ingress resource didn’t route traffic correctly.
Solution: Ensured minikube tunnel was running and that the hosts file mapped the local domain (e.g., ornek-uygulama.local) to the Minikube IP.

2.CoreDNS Failures:
Problem: CoreDNS wasn’t resolving internal services properly.
Solution: Restarted the CoreDNS pod and verified its logs to ensure it could reach the Kubernetes API.

3.CI/CD Pipeline Errors:
Problem: Docker image push failed due to incorrect registry credentials.
Solution: Used kubectl create secret docker-registry to securely store Docker Hub credentials in the cluster.

4.Resource Configuration:
Problem: Insufficient memory caused pods to crash.
Solution: Increased Minikube memory allocation to 4GB.

TESTING AND DEBUGGING
Check Pod Status:
kubectl get pods
--> 
NAME                              READY   STATUS             RESTARTS      AGE
dnsutils                          0/1     ImagePullBackOff   0             17m
ornek-uygulama-5c6c965b8b-bvtp5   1/1     Running            2 (17m ago)   49m
ornek-uygulama-5c6c965b8b-kkrlh   1/1     Running            2 (17m ago)   49m

View Logs for a Pod:
kubectl logs <pod-name>

DNS Lookup:
nslookup ornek-uygulama.local

CONCLUSION
This project was a learning experience in setting up CI/CD pipelines and working with Kubernetes. 
I faced some challenges like debugging DNS issues and configuring Helm Charts.

GITHUB LINK: https://github.com/mineergin123/case_study