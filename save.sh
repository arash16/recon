curl https://dl.min.io/client/mc/release/linux-amd64/mc --create-dirs -o /usr/local/bin/mc
chmod +x /usr/local/bin/mc
mc alias set \
  arvan https://s3.ir-thr-at1.arvanstorage.com \
  $AWS_ACCESS_KEY_ID \
  $AWS_SECRET_ACCESS_KEY \
  --api s3v4

cd /reconftw/Recon/$2
zip -r out.zip *
mc cp out.zip arvan/recon/$2-$(date +"%Y-%m-%dT%H:%M:%SZ").zip
