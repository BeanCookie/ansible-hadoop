# Hadoop-ansible
- Install Hadoop cluster with ansible
- Now Support CentOS 7.x
- JDK is  Openjdk-1.8
- Hadoop is the latest version 3.0.0
- Hive is the version 2.3.2

## Before Install
1. Use DNS Server or update /etc/hosts for all servers
2. //todo 配置所有节点/etc/hosts
3. //todo 配置master私钥

## Install Hadoop
1. Download Hadoop to any path

2. //todo 配置JAVA_HOME

3. Update the {{ download_path }} in vars/var_basic.yml
```
download_path: "/home/pippo/Downloads" # your local path 
hadoop_version: "3.0.0" # your hadoop version
hadoop_path: "/home/hadoop" # default in user "hadoop" home
hadoop_config_path: "/home/hadoop/hadoop-{{hadoop_version}}/etc/hadoop"
hadoop_tmp: "/home/hadoop/tmp"
hadoop_dfs_name: "/home/hadoop/dfs/name"
hadoop_dfs_data: "/home/hadoop/dfs/data"
```


3. Use ansible template to generate the hadoop configration, so If your want to add more properties, just update the vars/var_basic.yml.default is 

### Install Master

run shell like

```
ansible-playbook -i hosts/host master.yml
```

### Install Workers

run shell like:
```
master_ip:  your hadoop master ip
master_hostname: your hadoop master hostname

above two variables must be same like your real hadoop master

ansible-playbook -i hosts/host workers.yml -e "master_ip=172.16.251.70 master_hostname=hadoop-master"

```

### Install hive
1. **Create database first and give right authority**



2. run it

3. //todo https://github.com/chuqbach/Big-Data-Installation/issues/1

```
ansible-playbook -i hosts/host hive.yml

```

### License

GNU General Public License v3.0

### //todo Run Hadoop
