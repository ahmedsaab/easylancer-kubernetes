kubectl apply -f apps/data-api.kube.yaml
kubectl rollout restart deployment/data-api