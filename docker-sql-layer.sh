#!/bin/bash

# import environment
touch /etc/default/fdb-sql-layer
echo USER=root >> /etc/default/fdb-sql-layer
echo STDLOG=/logs/fdb-sql-layer-stdout.log >> /etc/default/fdb-sql-layer

# env >/tmp/docker.env
# cat /etc/default/fdb-sql-layer >>/tmp/docker.env
# mv /tmp/docker.env /etc/default/fdb-sql-layer

if [ ! -d /etc/foundationdb/sql ]; then
    ln -s /etc/fdb-sql /etc/foundationdb/sql
fi

service fdb-sql-layer start
