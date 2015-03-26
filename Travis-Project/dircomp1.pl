#!/usr/bin/perl

$path1 = "C:\\Rishi";
$path2 = "C:\\Program Files";

use File::Dircmp;
 '@r = dircmp("$path1", "$path2", 1, 1 );
 @r = map { $_ = "$1/$2" if /^Only in ([^:]+):\s+(.*)$/;
 $_ = $1 if /^Files (\S+)\s/;
 s|^$path1/||; s|^$path2/||; $_ } @r;
 print join( "\n", @r ), "\n"'