export HADOOP_HOME={{hadoop_path}}/hadoop-{{hadoop_version}}
export PATH=$HADOOP_HOME/sbin:$HADOOP_HOME/bin:$PATH
export YARN_LOG_DIR=${{ hadoop_log_path }}
export HDFS_NAMENODE_USER={{ user }}
export HDFS_DATANODE_USER={{ user }}
export HDFS_SECONDARYNAMENODE_USER={{ user }}
export YARN_RESOURCEMANAGER_USER={{ user }}
export YARN_NODEMANAGER_USER={{ user }}