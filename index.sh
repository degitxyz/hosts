#!/bin/bash

if [ -f "index.html" ]; then
    rm index.html
fi

cat >404.html <<EOF
<pre>
404
</pre>
EOF

cp hosts index.html
sed -i '1i\<pre>' index.html
sed -i '$a\</pre>' index.html
