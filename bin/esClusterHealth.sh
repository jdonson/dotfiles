#!/bin/bash
curl -s -XGET 'http://elasticsearch.sec.placeiq.net:9200/_cluster/health?pretty=true'
