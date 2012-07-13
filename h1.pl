#!/usr/bin/perl -n

if ($. == 1) { 
  s/^/<h1>/;
  s/$/<\/h1>/m; 
  print;
}
