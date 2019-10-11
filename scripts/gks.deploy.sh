# usage: gks.deploy $APP

kubectl apply -f apps/$1.kube.yaml

kubectl rollout restart deployment/$1
