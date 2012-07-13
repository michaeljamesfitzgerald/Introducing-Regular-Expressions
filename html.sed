#!/usr/bin/sed

1s/^(.*)$/<!DOCTYPE html>\
<html lang="en">\
<head>\
 <title>\1<\/title>\
<\/head>\
<body>\
<h1>\1<\/h1>\
/

s/^(ARGUMENT|I{0,3}V?I{0,2})\.$/<h2>\1<\/h2>/
5s/^([A-Z].*)$/<p>\1<\/p>/
9s/^[ ]*(.*)/  <p>\1<br\/>/
10,832s/^([ ]{5,7}.*)/\1<br\/>/
833s/^(.*)/\1<\/p>/
s/^$/<br\/>/
$ a\
<\/body>\
<\/html>\

