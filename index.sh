#!/bin/bash

if [ -f "index.html" ]; then
    rm index.html
fi

if [ ! -f 404.html ]; then
    cat >404.html <<EOF
<pre>
404
</pre>
EOF
fi

cp hosts index.html
sed -i 's#^#  #g' index.html
sed -i '1i\Hosts' index.html
cat >>index.html <<EOF

Download
  https://hosts.sengshinlee.com/hosts

GitHub
  https://github.com/sengshinlee/hosts

Time
  $(date)
EOF

sed -i '1i\<pre>' index.html
sed -i '$a\</pre>' index.html
