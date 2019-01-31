# VestaCP A+ SSL Rating
Little how to get an A+ Rating on https://www.ssllabs.com/ssltest/index.html with small modifications of the existing VestaCP template files.
## Setting up DHPARAMS
```bash
openssl dhparam -out /etc/nginx/dhparams.pem 4096
```

## Rebuild nginx with ALPN
https://forum.vestacp.com/viewtopic.php?f=20&t=12522
After last nginx Version ALPN Support is already included.

## modify nginx Conf File
Edit the Default nginx Conf File located under /etc/nginx/nginx.conf and replace/add the following lines:
```bash
    # SSL PCI Compliance
    ssl_ciphers "EECDH+AESGCM:EDH+AESGCM:ECDHE-RSA-AES128-GCM-SHA256:AES256+EECDH:DHE-RSA-AES128-GCM-SHA256:AES256+EDH:ECDHE-RSA-AES256-GCM-SHA384:DHE-RSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-SHA384:ECDHE-RSA-AES128-SHA256:ECDHE-RSA-AES256-SHA:ECDHE-RSA-AES128-SHA:DHE-RSA-AES256-SHA256:DHE-RSA-AES128-SHA256:DHE-RSA-AES256-SHA:DHE-RSA-AES128-SHA:ECDHE-RSA-DES-CBC3-SHA:EDH-RSA-DES-CBC3-SHA:AES256-GCM-SHA384:AES128-GCM-SHA256:AES256-SHA256:AES128-SHA256:AES256-SHA:AES128-SHA:DES-CBC3-SHA:HIGH:!aNULL:!eNULL:!EXPORT:!DES:!MD5:!PSK:!RC4";
    ssl_dhparam /etc/nginx/dhparams.pem;
    ssl_prefer_server_ciphers on;
    ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
    ssl_session_cache shared:SSL:10m;
    add_header Strict-Transport-Security "max-age=31536000; includeSubdomains";
```

Also modify the default *.stpl Templates and add ssl http2 to listen line:

```bash
    ...
    listen      185.78.126.206:443 ssl http2;
    ...
```

Then rebuild all users and restart nginx.
```bash
v-rebuild-user username or over Web -> Check all Users and do a Rebuild
service nginx restart
```

## Check the Rating
Now all should be done and you can check your SSL Rating on: https://www.ssllabs.com/ssltest/index.html

Credit: https://git.scit.ch/rs
