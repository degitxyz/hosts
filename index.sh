#!/bin/bash

if [ -f "index.html" ]; then
    rm index.html
fi

cat >404.html <<EOF
<pre>
404
</pre>
EOF
