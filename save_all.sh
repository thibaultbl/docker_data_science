docker save thibault/all-spark-notebook:latest > ./saved_image/all_spark_notebook.tar
docker save thibault/spark-worker:2.4.0-hadoop2.7 > ./saved_image/spark_worker.tar
docker save thibault/spark-master:2.4.0-hadoop2.7 > ./saved_image/spark_master.tar

cp -r ./ $1


