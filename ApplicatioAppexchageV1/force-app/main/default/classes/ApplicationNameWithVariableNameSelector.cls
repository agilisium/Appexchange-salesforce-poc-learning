public with sharing class ApplicationNameWithVariableNameSelector extends Aglib_SObjectSelector implements IApplicationNameWithVariableNameSelector
{

	public static IApplicationNameWithVariableNameSelector newInstance()
    {
        return (IApplicationNameWithVariableNameSelector) ExternalApplicationConnect.SELECTOR.newInstance(ApplicationNameWithVariableName__mdt.SObjectType);
    } 

	public List<Schema.SObjectField> getSObjectFieldList()
	{
        //Id, ApplicationType__c, EndpointMethod__c, EndpointPath__c, NamedCredentialName__c
		return new List<Schema.SObjectField> {
			ApplicationNameWithVariableName__mdt.Id,
			ApplicationNameWithVariableName__mdt.ApplicationType__c,
			ApplicationNameWithVariableName__mdt.VariableName__c
		};
	}

	public Schema.SObjectType getSObjectType()
	{
		return ApplicationNameWithVariableName__mdt.SObjectType;
	}

    public List<ApplicationNameWithVariableName__mdt> getApplicationVariableNames(String applicationTypeName)
    {
        List<ApplicationNameWithVariableName__mdt> applicationNameWithVariableNames = new List<ApplicationNameWithVariableName__mdt>();

        try {
            if(Schema.sObjectType.ApplicationNameWithVariableName__mdt.isAccessible() == true)
            {
                applicationNameWithVariableNames = 
                [
                    SELECT 
                        ApplicationType__c, VariableName__c
                    FROM
                        ApplicationNameWithVariableName__mdt
                    WHERE
                        ApplicationType__c =: applicationTypeName
                ];
            }
            else
            {
                applicationNameWithVariableNames = null;
            }
            return applicationNameWithVariableNames;
        }catch(Exception exp){
            return applicationNameWithVariableNames;
        }     
    }    
}