FROM spark-base:1.0

EXPOSE 8081

CMD bin/spark-class org.apache.spark.deploy.worker.Worker spark://spark-master:7077 >> logs/spark-worker.out