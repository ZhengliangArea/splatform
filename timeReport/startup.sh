#!/bin/bash
./stop.sh

EXT='-Djava.ext.dirs='
#JDK/JREĿ¼�µ�extĿ¼
EXT=$EXT:'/usr/local/program/jdk1.6.0_43/jre/lib/ext'

#��������JarĿ¼
EXT=$EXT:'./libs'

/usr/local/program/jdk1.6.0_43/jre/bin/java $EXT -jar $* TimingReport.jar &
echo $! > .pid
