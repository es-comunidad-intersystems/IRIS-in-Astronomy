#!/bin/bash

jdbc_path=/lhome/IRIS/test/dev/java/lib/JDK18 
java -cp $jdbc_path/intersystems-utils-3.1.0.jar:$jdbc_path/intersystems-jdbc-3.1.0.jar:$jdbc_path/intersystems-xep-3.1.0.jar com.intersystems.datatransfer.SimpleMover p=gaia.properties.iris
