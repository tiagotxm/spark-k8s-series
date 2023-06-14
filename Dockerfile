#FROM apache/spark:3.4.0-scala2.12-java11-python3-r-ubuntu
FROM apache/spark-py:v3.2.4

COPY scripts/pyspark/users-by-city.py /opt/spark/examples
