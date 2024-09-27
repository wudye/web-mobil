#!/bin/sh

#$1 - The first command-line argument passed to the script.
#This is an alternate version of the built-in test. The commands inside are run and checked for "truthiness." Strings of zero length are false. 

#curl https://www.geeksforgeeks.org

#curl    command line tool and library for transferring data with URLs
#Greatly simplyfing, it allows you to download a file from a (web)server.
#-s, --silent
#Silent or quiet mode. Don't show progress meter or error messages.  Makes Curl mute.

#-d, --delimiter=DELIM
#       use DELIM instead of TAB for field delimiter
#-f, --fields=LIST(=column)
#       select only these fields;  also print any line that contains no delimiter character, unless the -s
#       option is specified


#<html>
#<head><title>Bitly</title></head>
#<body><a href="http://42.fr/">moved here</a></body>
#</html>
if [ $1 ]; then 
    curl -s $1 | grep "href" | cut -d \" -f 2 
fi

#https://askubuntu.com/questions/238002/is-bin-sh-read-by-the-interpreter
#A line starting with #! is just as much 
#a comment as any other line that starts with #. This is true if the
 #! is the first line of the file, or anywhere 
 #else. #!/bin/sh has an effect, but it is not read by the interpreter itself.

# Suppose a shell script begins with #!/bin/sh. That is a comment, and 
# the interpreter (the shell) ignores everything on the line after the # character.

#The purpose of a #! line is not to give information to the interpreter. The purpose of the #! line is to tell the operating system (or whatever process launches the interpreter) what to use as the interpreter.
#if you invoke the script as an executable file, for example, by running ./script.sh, the system consults the first line to see if begins with #!, followed by zero or more spaces, followed by a command. If it does, it runs that command with the name of the script as its argument. In this example, it runs /bin/sh script.sh (or, technically, /bin/sh ./script.sh).
#If you invoke the script by explicitly calling the interpreter, the #! line is never consulted. So, if you run sh script.sh, the first line has no effect. If script2.sh's first line is #!/usr/games/nibbles, running sh script2.sh will not try to open the script in nibbles (but ./script2.sh will).
