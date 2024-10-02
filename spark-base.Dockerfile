FROM cluster-base:1.0

RUN apt-get update -y 
RUN apt-get install -y curl 
RUN curl https://archive.apache.org/dist/spark/spark-3.4.0/spark-3.4.0-bin-hadoop3.tgz -o spark.tgz 
RUN tar -xf spark.tgz 
RUN mv spark-3.4.0-bin-hadoop3 /usr/bin/
RUN mkdir /usr/bin/spark-3.4.0-bin-hadoop3/logs 
RUN rm spark.tgz

ENV SPARK_HOME /usr/bin/spark-3.4.0-bin-hadoop3
ENV SPARK_MASTER_HOST spark-master
ENV SPARK_MASTER_PORT 7077
ENV PYSPARK_PYTHON python3

WORKDIR /usr/bin/spark-3.4.0-bin-hadoop3