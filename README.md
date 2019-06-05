<pre><code>
# docker_data_science

Basic setup to experiment with spark and a notebook.

Just hit "docker-compose up" at the root of the directory and 
copy paste following code in the notebook:

<pre><code>
import os

# make sure pyspark tells workers to use python3 not 2 if both are installed
os.environ['PYSPARK_PYTHON'] = '/usr/bin/python3.7'

from pyspark.sql import SparkSession
spark = SparkSession.builder \
        .master("spark://bf3e68087766:7077") \
        .appName("Word Count") \
        .getOrCreate()

sc = spark.sparkContext

# do something to prove it works
rdd = sc.parallelize([1.5, 2.5, 6.5, 8.5, 90.])
rdd.sumApprox(3)

from pyspark.sql.types import FloatType
df = spark.createDataFrame(rdd, FloatType())

# df.show()
</code></pre>
