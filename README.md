# ELK-stack-for-secure-logs

Transform secure log files with Logstash for analysis and send/get them to/from Elasticsearch.

Filebeat centralize logs and passes them to Logstash. Logstash has two pipelines. The first one gets unstructured data from Filebeat and transforms them, then sends them to Elasticsearch. The second one gets structured data from Elasticsearch. This repo contains only configuration files for Filebeat, Logstash and Elasticsearch. Other files are set in default.        

## Installation

Follow the instructions from https://www.elastic.co/guide/index.html          
This project is tested in CentOS Linux 7.                

## File paths (for rpm installation)

/etc/elasticsearch/elasticsearch.yml               
/etc/logstash/logstash.yml                  
/usr/share/filebeat/filebeat.yml                 
/usr/share/logstash/logstash_1.conf              
/usr/share/logstash/logstash_2.conf                  

## Commands           

Start Elasticsearch:                                         
`systemctl start elasticsearch.service`                   
Stop Elasticsearch:                                          
`systemctl stop elasticsearch.service`                      
Start Filebeat (exec in /usr/share/filebeat):                
`sudo ./bin/filebeat -e -c filebeat.yml -d "publish"`                      
Start 1st Logstash pipeline (exec in /usr/share/logstash):   
`sudo bin/logstash -f logstash_1.conf --config.reload.automatic`                 
Start 2nd Logstash pipeline (exec in /usr/share/logstash):   
`sudo bin/logstash -f logstash_2.conf --config.reload.automatic`                    

## Example of log file format:    

Feb 16 03:43:27 ns508880 sshd[25726]: Failed password for root from 49.88.112.112 port 47108 ssh2           
Feb 16 03:43:28 ns508880 sshd[25726]: pam_succeed_if(sshd:auth): requirement "uid >= 1000" not met by user "root"           
Feb 16 03:43:29 ns508880 sshd[25726]: Failed password for root from 49.88.112.112 port 47108 ssh2         
Feb 16 03:43:30 ns508880 sshd[25726]: Received disconnect from 49.88.112.112 port 47108:11:  [preauth]     

