#!/bin/bash

echo "
+--------------------------------------------------------------
| For CentOS Linux 7
+--------------------------------------------------------------
| Commands
+--------------------------------------------------------------
| Start Elasticsearch:
| sudo systemctl start elasticsearch.service
| Stop Elasticsearch:
| sudo systemctl stop elasticsearch.service
+--------------------------------------------------------------
| Start Filebeat:
| sudo ./bin/filebeat -e -c filebeat.yml -d "publish"
+--------------------------------------------------------------
| Start Logstash:
| sudo bin/logstash -f pipeline_1.conf --config.reload.automatic
| sudo bin/logstash -f pipeline_2.conf --config.reload.automatic
+--------------------------------------------------------------
"
