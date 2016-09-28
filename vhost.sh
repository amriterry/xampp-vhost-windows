projectRootDir=$1
vhostAlias=$3

if [ ""/"" = $2 ]; then
  serverRootDir=$1"/"
else
  serverRootDir=$1"/"$2
fi

cd "C:\xampp\apache\conf"

echo "

 DocumentRoot \"$projectRootDir\"
<Directory \"$projectRootDir\">
    Options All
    AllowOverride All
    Require all granted
</Directory>" >> httpd.conf

cd "C:\xampp\apache\conf\extra"

echo "

 <VirtualHost *:80>
    ServerAdmin webmaster@$vhostAlias
    DocumentRoot \"$serverRootDir\"
    ServerName $vhostAlias
    ErrorLog \"logs/$vhostAlias-error.log\"
    CustomLog \"logs/$vhostAlias-access.log\" common
</VirtualHost>" >> httpd-vhosts.conf

cd "C:\Windows\System32\drivers\etc"

echo "

 127.0.0.1   $vhostAlias" >> hosts
