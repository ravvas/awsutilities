# Sense Plugin For AWS Elasticsearch

   AWS Elasticsearch is managed service in which users don't have access to Elasticsearch instance.

Sense is a kibana plugin mainly used to query	the elasticsearch database( similar to SQL plus etc for RDBMS) . In order to use Sense  plugin, we need to install kibana in a separate EC2 instance and add  sense plugin and connect to elasticsearch instance. 
Below are the steps to install sense plugin 
1)  **Install using Cloudformation template** : 
	 
	 you can copy the cloudformation template ( kibanaWithSense.json) into your local computer and  create cloudformation stack using  AWS console.

	 As it takes only 3 minutes to launch EC2 instance and configure sense  plugin  , you can delete the stack once you are done with  querying elasticsearch and recreate quickly when you want. 
	 
	 **Below are the pre-requisites before creating the stack**: 
	 
	   i) you should have an EC2 key pair created in the region where you want to create the stack.	   
	   ii) Have subnet Id as well as VPC Id in which you want to create stack. 	   
	   iii)  AWS Elasticsearch domain created and handy with end point.	   
  **steps** :  
  	   i) create new stack in cloudformation console , select "upload template into s3" and uploade the JSON file  and click next.	   
	   ii) you will get prompt to fill template name, key name, VPC ID, subnet ID and elasticsearch domain end point. 	   
	   iii) Then follow the steps by selecting default values and create the stack. 	   
	   iv) in less than 4 min, stack will be created and in the output section you will see two keys. "kibanaURL" is the URL you need to paste in your chrome browser. Then you will see page like will be loaded. 
    v) In the web page, paste "elasticsearchurl" value into 'server" field.
          
     ![sense screenshot](https://github.com/ravvas/awsutilities/blob/master/senseplugin/sensescreenshot.JPG "Sense Home page")