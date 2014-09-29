Kafka in a box
==============

When building a prototype, it often isn't necessary to deploy a cluster of machines. Perhaps a single VM would suffice.

This Vagrant recipe creates a VM, on the localhost, that's running Kafka in a single-node fashion with a local Zookeeper.

Steve Connelly has a more thoughtful blogpost on this topic: http://www.objectpartners.com/2014/05/06/setting-up-your-own-apache-kafka-cluster-with-vagrant-step-by-step/

My goal was to get a local Kafka instance running with the minimim of effort. Once the box is provisioned, you can:

1) start zookeeper:
    bin/zookeeper-server-start.sh config/zookeeper.properties
2) start kafka:
    bin/kafka-server-start.sh config/server.properties
3) start a producer:
    bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test
4) start a consumer:
    bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic test --from-beginning

... then type something in the producer console, and you'll see it in the consumer console.

