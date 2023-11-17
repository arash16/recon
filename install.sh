echo $1 > /root/Tools/.github_tokens

curl -L https://github.com/trufflesecurity/trufflehog/releases/download/v3.62.1/trufflehog_3.62.1_linux_amd64.tar.gz -o trufflehog.tar.gz
tar -xf trufflehog.tar.gz
chmod +x trufflehog
mv trufflehog /usr/local/bin/
