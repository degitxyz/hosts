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
sed -i '1i\<pre>' index.html
sed -i '$a\</pre>' index.html
