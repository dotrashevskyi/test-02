# This is CI project for simple GO app

## How to run app locally:
   1. Install Docker
   2. Build docker image - docker build -t <your-tag> .
   3. run docker run -d --rm -p 8000:8000 --name go-app <your-tag>

## How to build image remotely
   Currently, it is managed automatically via cloud build [here](https://console.cloud.google.com/cloud-build/dashboard?project=internship-166-375809). 