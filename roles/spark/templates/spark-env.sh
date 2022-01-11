#!/usr/bin/env bash
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

export STANDALONE_SPARK_MASTER_HOST={{ spark_master_host }}
export SPARK_MASTER_PORT=7077
export SPARK_MASTER_IP=$STANDALONE_SPARK_MASTER_HOST
export SPARK_MASTER_WEBUI_PORT=8080

export SPARK_WORKER_PORT=7078
export SPARK_WORKER_WEBUI_PORT=8081

export SPARK_DAEMON_JAVA_OPTS="$SPARK_DAEMON_JAVA_OPTS -XX:OnOutOfMemoryError='kill -9 %p'"
export SPARK_PUBLIC_DNS={{ spark_master_host }}