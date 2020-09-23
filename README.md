# ELK-stack-for-secure-logs
ELK stack project for secure log files


### Format of secure log files:

**Example**:    
Feb 16 03:43:27 ns508880 sshd[25726]: Failed password for root from 49.88.112.112 port 47108 ssh2           
Feb 16 03:43:28 ns508880 sshd[25726]: pam_succeed_if(sshd:auth): requirement "uid >= 1000" not met by user "root"           
Feb 16 03:43:29 ns508880 sshd[25726]: Failed password for root from 49.88.112.112 port 47108 ssh2         
Feb 16 03:43:30 ns508880 sshd[25726]: Received disconnect from 49.88.112.112 port 47108:11:  [preauth]            
     
**Match**:    
'%{SYSLOGTIMESTAMP:timestamp} %{SYSLOGHOST:machine} %{DATA:application}(?:|\[%{NUMBER:appid}]): %{GREEDYDATA:message}'

