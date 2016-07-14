knife ec2 server list | awk 'BEGIN {print "GSSAPIAuthentication no\n\n"} NR>1 {print "Host " $2 "\n\t" "HostName " $3 "\n"}' > ~/.ssh/config
