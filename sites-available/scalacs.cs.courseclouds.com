rsync -avz --exclude .htaccess ./build/ course@courseclouds.com:./public_html/scalacs.cs.courseclouds.com/
