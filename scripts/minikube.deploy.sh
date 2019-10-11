killall ngrok

minikube start

kubectl apply -f apps

ngrok http -log=stdout -hostname=app.skillranks.ngrok.io \
 "$(minikube service web-app --url | awk -F/ '{print $3}')" > /dev/null &

ngrok http -log=stdout -hostname=api.skillranks.ngrok.io \
  "$(minikube service client-api --url | awk -F/ '{print $3}')" > /dev/null &
