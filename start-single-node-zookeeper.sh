#!/bin/bash
./usr/local/kafka/kafka-{{ kafka_version }}/bin/zookeeper-server-start.sh /usr/local/kafka/kafka-{{ kafka_version }}/config/zookeeper.properties
