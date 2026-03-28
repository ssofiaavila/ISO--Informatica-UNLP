#!/usr/bin/awk -f

BEGIN {
	print "parametros:"
	for (i = 1; i < ARGC; i++)
		print "  " i ": " ARGV[i]
}
