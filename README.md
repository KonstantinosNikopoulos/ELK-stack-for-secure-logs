# ELK-stack-for-secure-logs
ELK elastic stack project for secure log files    

ELK stack from https://www.elastic.co/what-is/elk-stack               
"ELK" is the acronym for three open source projects: Elasticsearch, Logstash, and Kibana. Elasticsearch is a search and analytics engine. Logstash is a server‑side data processing pipeline that ingests data from multiple sources simultaneously, transforms it, and then sends it to a "stash" like Elasticsearch. Kibana lets users visualize data with charts and graphs in Elasticsearch. 


This repo contains configuration files for filebeat, logstash, elasticsearch.   


### Secure log files =>      
### Pass them to filebeat =>       
### Pass output to logstash =>       
### Pass output to elasticsearch         


**Log file format**:    
Feb 16 03:43:27 ns508880 sshd[25726]: Failed password for root from 49.88.112.112 port 47108 ssh2           
Feb 16 03:43:28 ns508880 sshd[25726]: pam_succeed_if(sshd:auth): requirement "uid >= 1000" not met by user "root"           
Feb 16 03:43:29 ns508880 sshd[25726]: Failed password for root from 49.88.112.112 port 47108 ssh2         
Feb 16 03:43:30 ns508880 sshd[25726]: Received disconnect from 49.88.112.112 port 47108:11:  [preauth]            
     
