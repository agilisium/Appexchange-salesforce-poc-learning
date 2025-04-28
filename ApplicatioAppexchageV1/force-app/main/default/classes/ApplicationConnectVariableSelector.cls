public with sharing class ApplicationConnectVariableSelector  extends Aglib_SObjectSelector implements IApplicationConnectVariableSelector
{
	public static IApplicationConnectVariableSelector newInstance()
    {
        return (IApplicationConnectVariableSelector) ExternalApplicationConnect.SELECTOR.newInstance(ApplicationConnectVariable__mdt.SObjectType);
    } 

	public List<Schema.SObjectField> getSObjectFieldList()
	{
        //Id, ApplicationType__c, EndpointMethod__c, EndpointPath__c, NamedCredentialName__c
		return new List<Schema.SObjectField> {
			ApplicationConnectVariable__mdt.Id,
			ApplicationConnectVariable__mdt.ApplicationConnectDetail__c,
			ApplicationConnectVariable__mdt.Value__c,
            ApplicationConnectVariable__mdt.Variable__c
		};
	}

	public Schema.SObjectType getSObjectType()
	{
		return ApplicationConnectVariable__mdt.SObjectType;
	}

    public List<ApplicationConnectVariable__mdt> getApplicationConnectVariables(Id applicationConnectDetailId)
    {
        
        list<ApplicationConnectVariable__mdt> appliactionConnectVariables = new list<ApplicationConnectVariable__mdt>();

        try {
                if(Schema.sObjectType.ApplicationConnectVariable__mdt.isAccessible() == true)
                {
                    
                    appliactionConnectVariables = 
                    [
                        SELECT 
                            ApplicationConnectDetail__c, Value__c, Variable__c
                        FROM
                            ApplicationConnectVariable__mdt
                        WHERE
                            ApplicationConnectDetail__c =: applicationConnectDetailId
                    ];

                }else
                {
                    appliactionConnectVariables = null;
                }
            return  appliactionConnectVariables;
        }
        catch (Exception exp) {
            return  appliactionConnectVariables;
        }
    }
}