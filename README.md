# RImpala

RImpala is an R package that helps you to connect and execute distributed queries using Cloudera Impala.
Impala supports jdbc integration and this feature is used by RImpala to establish a connection between R and Impala. 

## Installating RImpala

To use this package you must also have access to a Hadoop cluster running Cloudera Impala with at least one populated table defined in the Hive Metastore.
	
### Install RImpala

1. Clone the repository
2. The [Impala JDBC zip file](impala-jdbc-cdh5.zip) present in the repository is required by the client machine to connect to Impala Servers.
    * Extract the contents of the zip file to a location of your choosing. 
	For example:
	  - On Linux, you might extract this to a location such as /opt/jars/.
	  - On Windows, you might extract this to a folder such as C:\Program Files\impala-jars.
   * We will use this location in <code>rimpala.init()</code> 
3. Extract the package installer by decompressing the contents of <code>RImpala-0.1.6.tar.gz</code> present inside <code>install</code> directory
    - <code> tar -xvf install/RImpala_0.1.6.tar.gz </code>
4. Then Install the package using the following command: 
  - <code>R CMD INSTALL ./RImpala</code>

## Loading RImpala and connecting to Impala

1. Find the ip of the machine and the port where the Impala service is running.
2. Find the location where you have unziped the JDBC jars in the above section.
2. Launch R
3. <code>
	library("RImpala")
	rimpala.init(libs="/path/to/JDBC/jars/")
	result = rimpala.query("your query");
	</code>
	by default rimpala.init() searches "/usr/lib/impala" for the JDBC jars.

###
Here are links to more information on Cloudera Impala:

- [Cloudera Enterprise RTQ](http://www.cloudera.com/content/cloudera/en/products/cloudera-enterprise-core/cloudera-enterprise-RTQ.html) 

- [Cloudera Impala Documentation](http://www.cloudera.com/content/support/en/documentation/cloudera-impala/cloudera-impala-documentation-v1-latest.html)

- [Cloudera Impala JDBC Documentation](http://www.cloudera.com/content/cloudera-content/cloudera-docs/Impala/latest/Installing-and-Using-Impala/ciiu_impala_jdbc.html)

- [Impala-User Google Group](https://groups.google.com/a/cloudera.org/forum/?fromgroups#!forum/impala-user)
 
## Requirements
- Java (>= 1.5)
- R (>= 2.7.0)
- rJava (>= 0.5-0)
- Impala [JDBC driver jars](impala-jdbc-cdh5.zip)
