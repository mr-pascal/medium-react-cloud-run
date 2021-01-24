####################################
########### VARIABLES ##############
####################################
GCP_PROJECT="my-medium-demo-project-299218"
SERVICE_NAME="my-react-app"
REGION="europe-west1"

####################################
###### GENERATED VARIABLES #########
####################################
IMAGE_NAME="gcr.io/$GCP_PROJECT/$SERVICE_NAME"
IMAGE_NAME_LATEST="$IMAGE_NAME:latest"

####################################
########## CLEANUP GCR #############
####################################
gcloud container images delete "$IMAGE_NAME_LATEST" \
   --force-delete-tags \
   --quiet

####################################
####### CLEANUP Cloud RUn ##########
####################################
gcloud run services delete $SERVICE_NAME \
  --project $GCP_PROJECT \
  --platform managed \
  --region $REGION \
  --quiet