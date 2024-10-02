FROM cluster-base:1.0

RUN apt-get update -y 
RUN apt-get install -y python3-pip 
RUN pip3 install pyspark==3.4.0 jupyterlab==3.6.3

EXPOSE 8888

WORKDIR /opt/workspace

CMD jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token=