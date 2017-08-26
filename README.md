# Salesforce Best Practices
# With Great Power Comes Great Responsibility!

The best applications are coded properly. The "properly" means the code not only does its job well, but is also easy to understand, add to, maintain and debug.

Coding standards are great! We want to ensure that the Salesforce.com org is self documented. The consistent and well-written code is critical to ensuring high quality standards across all applications. 

Here you will find the Best Practices (Naming Conventions & Coding Standards) of following components of Salesforce.com org:
1. Custom Objects
2. Custom Fields
3. Apex Triggers
4. Apex Classes
5. Re-factor Apex Classes

### Custom Objects
Custom Object names should be CapitalizedCamelCase
For Example:
1. SalesOrder__c (Yes this one!)
2. Sales_Order__c (Not this one!)

### Custom Fields
Custom field names should be CapitalizedCamelCase
For Example:
1. SalesAmount__c (Yes this one!)
2. Sales_Amount__c (Not this one!)

### Apex Triggers
Apex Triggers should be Bulkified. 
