#This script builds the jar by calling build.sh in RImpala/java
#and then builds the RImpala package
cd java
./build.sh
cd ..
R CMD build src
