# Create deployment manually
kubectl create deployment data-api --image=easylancer/data-api:0.0.1

# Create service manually
kubectl expose deployment data-api --type=LoadBalancer --port=3003

# Debug cluster
kubectl get pods
kubectl get events --sort-by='.metadata.creationTimestamp'
kubectl config view

# List services
kubectl get services

# See pod log
kubectl logs --follow $POD

# BASH
kubectl exec -it $POD -- /bin/bash

# Delete
kubectl delete deploy/$DEPLOYMENT svc/$SERVICE

# Update image
kubectl set image deployment/data-api data-api=easylancer/data-api:0.0.1

# APPLY YAML
kubectl apply -f apps/data-api.kube.yaml

# DELETE YAML
kubectl delete -f apps/data-api.kube.yaml

# Debug pod
kubectl describe pod/$POD
