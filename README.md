# Scripts
Some useful scripts I use from time to time.

## Deploy web page to default nginx from S3 Bucket

```bash
curl -s https://raw.githubusercontent.com/samurosales/Scripts/main/change-nginx-default-s3.sh | sudo bash -s bucketPath
```

## Deploy web page to default nginx from Git Repository

```bash
curl -s https://raw.githubusercontent.com/samurosales/Scripts/main/change-nginx-default-git.sh | sudo bash -s repoPath
```


## Deploy web page from S3 Bucket

```bash
do not use it yet, its still --WIP--
curl -s https://raw.githubusercontent.com/samurosales/Scripts/main/auto-nginx-deploy-s3.sh | sudo bash -s nginxPath bucketPath
```

## Deploy web page from Git Repository

```bash
do not use it yet, its still --WIP--
curl -s https://raw.githubusercontent.com/samurosales/Scripts/main/auto-nginx-deploy-git.sh | sudo bash -s nginxPath repPath
```