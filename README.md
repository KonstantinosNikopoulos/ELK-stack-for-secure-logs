# ELK-stack-for-secure-logs

Transform secure log files with Logstash for analysis and send/get them to/from Elasticsearch.

Filebeat centralize logs and passes them to Logstash. Logstash has two pipelines. The first one gets unstructured data from Filebeat and transforms them, then sends them to Elasticsearch. The second one gets structured data from Elasticsearch. This repo contains only configuration files for Filebeat, Logstash and Elasticsearch. Other files are set in default.        

## What is ELK-stack
ELK-stack is Elasticsearch, Kibana, Beats, and Logstash stack together. It can be used to take data from any source, in any format, then search, analyze, and visualize it in real time.                  
Elasticsearch: Elasticsearch is a highly scalable analytics engine that has full-text search capabilities. It is an open-source solution developed in Java with industry-standard capabilities. With the RESTful Web interface, it provides a distributed, multi-tenant architecture so that multiple users can use the platform at once.                         
Logstash: This component is a centralized logging system that also helps in log enrichment and parsing. You can parse specific fields in the logs and send them to the Elasticsearch index to save the records.                                   
Kibana: Kibana is used for data visualization and to perform analytics on the data indexed on the Elasticsearch index. You can search and view data that is stored in Elasticsearch indices. You can create interactive dashboards to visually display the analyzed data in different forms like tables, forms, maps, and charts.              

## Installation

This project is tested with rpm installation.                       
1) Follow the instructions from https://www.elastic.co/guide/index.html          
2) Replace/Create below files.           
3) Create/Move log files to /root/dataset/secure/ or change this path in /usr/share/filebeat/filebeat.yml            

## File paths 

/etc/elasticsearch/elasticsearch.yml               
/etc/logstash/logstash.yml                  
/usr/share/filebeat/filebeat.yml                 
/usr/share/logstash/pipeline_1.conf              
/usr/share/logstash/pipeline_2.conf                  

## Commands           

Start Elasticsearch:                                         
`systemctl start elasticsearch.service`                   
Stop Elasticsearch:                                          
`systemctl stop elasticsearch.service`                      
Start Filebeat (exec in /usr/share/filebeat):                
`sudo ./bin/filebeat -e -c filebeat.yml -d "publish"`                      
Start 1st Logstash pipeline (exec in /usr/share/logstash):   
`sudo bin/logstash -f pipeline_1.conf --config.reload.automatic`                 
Start 2nd Logstash pipeline (exec in /usr/share/logstash):   
`sudo bin/logstash -f pipeline_2.conf`                    

## Instructions           

Monitor:
1) Install Filebeat, Logstash, Elasticsearch.                                                   
2) Replace conf and yml files with files from this repo.                                             
3) Start Elasticsearch:                                         
`systemctl start elasticsearch.service`              
4) Empty /usr/share/filebeat/bin/data/registry/filebeat/log.json              
5) Start Filebeat (exec in /usr/share/filebeat):                
`sudo ./bin/filebeat -e -c filebeat.yml -d "publish"`                      
6) Start 1st Logstash pipeline (exec in /usr/share/logstash):   
`sudo bin/logstash -f pipeline_1.conf --config.reload.automatic`                 

Create dataset:
1) Start 2nd Logstash pipeline (exec in /usr/share/logstash):   
`sudo bin/logstash -f pipeline_2.conf`            

## Example of log file format:    

Feb 21 03:43:37 ns508880 sshd[25726]: Failed password for root from 49.88.212.113 port 37908 ssh2           
Feb 21 03:43:38 ns508880 sshd[25726]: pam_succeed_if(sshd:auth): requirement "uid >= 1000" not met by user "root"           
Feb 21 03:43:39 ns508880 sshd[25726]: Failed password for root from 49.88.212.113 port 47108 ssh2         
Feb 21 03:43:40 ns508880 sshd[25726]: Received disconnect from 49.88.212.113 port 37908:11: [preauth]     

