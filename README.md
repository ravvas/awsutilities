
# Utilities that makes working with AWS much easier

These are some of the utilities that will accelerate your productivity while working with AWS. These utilities may be cloudformation templates, python scripts using AWS SDK(boto3) ,  lambda functions written in python , shell scripts to execute in EC2  or just tips in a text file. 
   
They are very easy to use without any major modifications. Not much error handling done for python scripts which I intended to update in future.  

Each utility is stored in a separate folder with its own readme file with instructions.

1.  Deploy sense plugin for Kibana in AWS Elasticsearch using cloudformation template. 
   
      AWS Elasticsearch is managed service in which users don't have access to underlying EC2 instance where Elasticsearch installed.

	Sense is a kibana plugin mainly used to query	the elasticsearch database( similar to SQL plus etc for RDBMS) . In order to use Sense  plugin, we need to install kibana in a separate EC2 instance and add sense plugin and connect to elasticsearch instance. 
	More information on this tool @  [sense plugin](senseplugin/README.md)
	< paste screenshot for sense>
	
2. AWS Custom Resources for various functionalities. 
		We will not be able to perform all activities using AWS cloudformation. For example , we need to load elasticsearch with template mappings after the creation of the AWS elasticsearch domain, create IoT certificate, get IoT end point that need to be used in other resource types as input. 
		More information on this tool @ [AWS Custom Resources](awscustom/README.md)
		<code snippet for 
3. Lambda Function with API gateway to create various resources for AWS IoT /Greengrass