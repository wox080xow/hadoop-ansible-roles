#!/bin/bash


# Hadoop Group
groupadd -g 1100 hadoop

# Hadoop Users
zookeeper=("zookeeper" "1000" "/home/zookeeper")
hdfs=("hdfs" "1001" "/home/hdfs")
yarn=("yarn" "1002" "/home/yarn")
mapred=("mapred" "1003" "/home/mapred")
hive=("hive" "1004" "/home/hive")
impala=("hbase" "1005" "/home/impala")
ranger=("ranger" "1006" "/home/ranger")
spark=("spark" "1007" "/home/spark")
hbase=("hbase" "1008" "/home/hbase")
hue=("hue" "1009" "/home/hue")
oozie=("oozie" "1010" "/home/oozie")
userlist=("zookeeper" "hdfs" "yarn" "mapred" "hive" "impala" "ranger" "spark" "hbase" "hue" "oozie")

declare -n user
for user in ${userlist[@]}
do
  cmd="useradd ${user[0]} -u ${user[1]} -d ${user[2]} -G hadoop -s /bin/bash"
  echo Execute: $cmd
 $cmd
done
