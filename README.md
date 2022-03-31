# Scripts
Some useful scripts I use from time to time.


## Deploy web page from S3 Bucket

```bash
curl -s https://raw.githubusercontent.com/samurosales/Scripts/main/auto-nginx-deploy-s3.sh | sudo bash -s nginxPath bucketPath
```

## Deploy web page from Git Repository

```bash
curl -s https://raw.githubusercontent.com/samurosales/Scripts/main/auto-nginx-deploy-git.sh | sudo bash -s nginxPath repoPath
