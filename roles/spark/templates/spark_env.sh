export SPARK_HOME={{ spark_path }}/spark-{{spark_version}}-bin-without-hadoop
export SPARK_CONF={{ spark_path }}/{{ spark_config_path }}
export PATH=$SPARK_HOME/bin:$PATH
export SPARK_DIST_CLASSPATH=$(hadoop classpath)
export SPARK_MASTER_IP={{ spark_master_host }}
