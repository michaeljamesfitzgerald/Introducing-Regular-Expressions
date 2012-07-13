#!/usr/bin/sed

1 i\
<!DOCTYPE html>\
<html lang=\"en\">\
<head>\
<title>The Rime of the Ancyent Mariner (1798)</title>\
</head>\
<body>
s/^/<h1>/
s/$/<\/h1>/
q
