#!/bin/bash
aws s3 sync assets s3://www.referenda.io/assets --delete --cache-control max-age=36000,public --acl public-read
aws s3 sync css s3://www.referenda.io/css --delete --cache-control max-age=36000,public --acl public-read
aws s3 sync js s3://www.referenda.io/js --delete --cache-control max-age=36000,public --acl public-read
aws s3 sync manual s3://www.referenda.io/manual --delete --cache-control max-age=36000,public --acl public-read
aws s3 sync scss s3://www.referenda.io/scss --delete --cache-control max-age=36000,public --acl public-read
aws s3 sync about s3://www.referenda.io/about --delete --cache-control max-age=36000,public --acl public-read
aws s3 cp _open-generator.url s3://www.referenda.io/_open-generator.url --metadata-directive REPLACE --cache-control max-age=0,no-cache,no-store,must-revalidate --content-type text/html --acl public-read
aws s3 cp _first-steps.url s3://www.referenda.io/_first-steps.url --metadata-directive REPLACE --cache-control max-age=0,no-cache,no-store,must-revalidate --content-type text/html --acl public-read
aws s3 cp index.html s3://www.referenda.io/index.html --metadata-directive REPLACE --cache-control max-age=0,no-cache,no-store,must-revalidate --content-type text/html --acl public-read
#aws s3 cp about.html s3://www.referenda.io/about.html --metadata-directive REPLACE --cache-control max-age=0,no-cache,no-store,must-revalidate --content-type text/html --acl public-read
