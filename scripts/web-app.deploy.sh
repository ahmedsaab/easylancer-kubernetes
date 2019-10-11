kubectl apply -f apps/web-app.kube.yaml
kubectl rollout restart deployment/web-app
