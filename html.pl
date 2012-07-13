#!/usr/bin/perl -p

if ($. == 1) {
 chomp($title = $_);
}
print "<!DOCTYPE html>\
<html xmlns=\"http://www.w3.org/1999/xhtml\">\
 <head>\
  <title>$title</title>\
  <meta charset=\"utf-8\"/>\
 </head>\
<body>\
<h1>$title</h1>\n" if $. == 1;
s/^(ARGUMENT|I{0,3}V?I{0,2})\.$/<h2>$1<\/h2>/;
if ($. == 5) {
 s/^([A-Z].*)$/<p>$1<\/p>/;
}
if ($. == 9) {
 s/^[ ]*(.*)/  <p>$1<br\/>/;
}
if (10..832) {
 s/^([ ]{5,7}.*)/$1<br\/>/;
}
if (9..eof) {
 s/^$/<br\/>/;
}
if ($. == 833) {
 s/^(.*)$/$1<\/p>\n <\/body>\n<\/html>\n/;
}
