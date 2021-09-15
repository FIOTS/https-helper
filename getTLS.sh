Domains=(
  cnblog.kkfun.top
)

for web in "${Domains[@]}"
do
  .acme.sh/acme.sh --issue -d "${web}" -w /var/www/html
  .acme.sh/acme.sh --installcert -d "${web}" \
    --keypath       /root/www/tls/"${web}".key  \
    --fullchainpath /root/www/tls/"${web}".key.pem \
    --reloadcmd     "sudo service nginx reload"
done
