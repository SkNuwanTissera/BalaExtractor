#!/bin/bash  
  
# This will pull all existing connectors with the ballerina version specified..
  
echo "~ Bala extractor ~"  
echo   
read -p "Enter the ballerina version of connectors [slalpha5] : " bal_version
bal_version=${bal_version:-slalpha5}
echo  
echo "Ballerina version : $bal_version"  
echo  
echo "Pulling from central ..."  
bal dist use $bal_version
bal pull ballerinax/github
bal pull ballerinax/twilio
bal pull ballerinax/sfdc
bal pull ballerinax/mongodb
bal pull ballerinax/redis
bal pull ballerinax/slack
bal pull ballerinax/netsuite
bal pull ballerinax/aws.sqs
bal pull ballerinax/aws.s3
bal pull ballerinax/googleapis.sheets
bal pull ballerinax/googleapis.drive
bal pull ballerinax/googleapis.people
bal pull ballerinax/googleapis.calendar
bal pull ballerinax/googleapis.gmail
bal pull ballerinax/asb
bal pull ballerinax/azure_cosmosdb
bal pull ballerinax/azure_eventhub
bal pull ballerinax/azure_storage_service