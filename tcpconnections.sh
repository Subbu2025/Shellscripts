#!/bin/bash
#This script is useful to Monitoring the Number of TCP Connections
C=$(/bin/netstat -nt | tail -n +3 | grep ESTABLISHED | wc -l)
D=$(/bin/date +"%m %d")
T=$(/bin/date +"%H %M")
printf "%s %s %s\n" "$C" "$D" "$T"
"${*/4 * * * *}" /bin/bash /home/subbu/shellscripts/Shellscripts/tcpconnections.sh >> ~/connections.data 2>&1

#C=$(/bin/netstat -nt | tail -n +3 | grep ESTABLISHED | wc -l)

#D=$(/bin/date +"%m %d")
#T=$(/bin/date +"%H %M")
#printf "%s %s %s\n" "$C" "$D" "$T"
#*/4 * * * * /bin/bash /home/subbu/shellscripts/Shellscripts/tcpconnections.sh >> ~/connections.data 2>&1

#*/4 * * * * /home/subbu/shellscripts/Shellscripts/tcpconnections.sh >> ~/connections.data
<<comment
Here's a breakdown of what each part of the script does:
    C=$(/bin/netstat -nt | tail -n +3 | grep ESTABLISHED | wc -l):
        Executes the netstat command to display network connections.
        Filters out the header lines using tail -n +3.
        Filters the output to only show established connections using grep ESTABLISHED.
        Counts the number of lines (connections) using wc -l.
        Stores the count in the variable C.
    D=$(date +"%m %d"):
        Retrieves the current date using the date command with the format %m %d (month and day).
        Stores the date in the variable D.
    T=$(date +"%H %M"):
        Retrieves the current time using the date command with the format %H %M (hour and minute).
        Stores the time in the variable T.
    printf "%s %s %s\n" "$C" "$D" "$T":
        Prints the values of C, D, and T using printf with a format string.
        %s in the format string represents a string placeholder.
        Each %s is replaced by the corresponding variable (C, D, T).
        The \n at the end adds a newline character for better formatting.
comment

