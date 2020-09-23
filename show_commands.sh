#!/bin/bash

echo "
+---------------------------------------------------------------------------------------------
| Start Elasticsearch     sudo systemctl start elasticsearch.service
+---------------------------------------------------------------------------------------------
| Start Filebeat          sudo ./bin/filebeat -e -c filebeat_test.yml -d "publish"
+---------------------------------------------------------------------------------------------
| Start Logstash          sudo bin/logstash -f first-pipeline.conf --config.reload.automatic
+---------------------------------------------------------------------------------------------
"
