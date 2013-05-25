# How to build a Tomcat release of Roller
# Builds differ primarily by JARs bundled in the WAR, 
# see weblogger-war-assembly/src/main/assembly/*.xml for JAR diffs
mvn clean
mvn install

cd weblogger-war-assembly
mvn clean
mvn -Dtomcat=true install
cd ..

cd weblogger-assembly
mvn clean
mvn -Dtomcat=true install
cd ..

