public with sharing class ApplicationConnectDetailSelector extends Aglib_SObjectSelector implements IApplicationConnectDetailSelector
{
	public static IApplicationConnectDetailSelector newInstance()
    {
        return (IApplicationConnectDetailSelector) ExternalApplicationConnect.SELECTOR.newInstance(ApplicationConnectDetail__mdt.SObjectType);
    } 

	public List<Schema.SObjectField> getSObjectFieldList()
	{
        //Id, ApplicationType__c, EndpointMethod__c, EndpointPath__c, NamedCredentialName__c
		return new List<Schema.SObjectField> {
			ApplicationConnectDetail__mdt.Id,
			ApplicationConnectDetail__mdt.ApplicationType__c,
			ApplicationConnectDetail__mdt.EndpointMethod__c,
            ApplicationConnectDetail__mdt.EndpointPath__c,
            ApplicationConnectDetail__mdt.NamedCredentialName__c
		};
	}

	public Schema.SObjectType getSObjectType()
	{
		return ApplicationConnectDetail__mdt.SObjectType;
	}

    public ApplicationConnectDetail__mdt getApplicationConnectDetails(String applicationConnectDetailName)
    {

        ApplicationConnectDetail__mdt appliactionConnectDetail = new ApplicationConnectDetail__mdt();

        try {
                if(Schema.sObjectType.ApplicationConnectDetail__mdt.isAccessible() == true)
                {
                    
                    appliactionConnectDetail = 
                        [
                        SELECT 
                            Id, ApplicationType__c, EndpointMethod__c, EndpointPath__c, NamedCredentialName__c
                        FROM
                            ApplicationConnectDetail__mdt
                        WHERE
                            DeveloperName =: applicationConnectDetailName
                        LIMIT 1
                        ];   
                }else
                {
                    appliactionConnectDetail = null;
                }
            return  appliactionConnectDetail;
        }
        catch (Exception exp) {
            return  appliactionConnectDetail;
        }
    }
}