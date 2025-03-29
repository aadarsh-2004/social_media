docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID aadarshsoni/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID aadarshsoni/$JOB_NAME:latest

docker push aadarshsoni/$JOB_NAME:$BUILD_ID

docker push aadarshsoni/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID aadarshsoni/$JOB_NAME:$BUILD_ID aadarshsoni/$JOB_NAME:latest
