gcloud config set project cryptic-syntax-233920
gcloud config set compute/zone us-central1-a

# config kubectl
gcloud container clusters get-credentials standard-cluster-1 --zone us-central1-a --project cryptic-syntax-233920

# create static ip
gcloud compute addresses create client-api-ip --region us-central1

# get static ip
gcloud compute addresses describe client-api-ip --region us-central1
