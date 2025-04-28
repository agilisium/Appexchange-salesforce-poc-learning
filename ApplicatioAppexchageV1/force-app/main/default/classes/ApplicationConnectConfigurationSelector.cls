public with sharing class ApplicationConnectConfigurationSelector extends Aglib_SObjectSelector implements IApplicationConnectConfigurationSelector
{
	public static IApplicationConnectConfigurationSelector newInstance()
    {
        return (IApplicationConnectConfigurationSelector) ExternalApplicationConnect.SELECTOR.newInstance(ApplicationConnectConfiguration__c.SObjectType);
    } 

	public List<Schema.SObjectField> getSObjectFieldList()
	{
		return new List<Schema.SObjectField> {
			ApplicationConnectConfiguration__c.Id,
			ApplicationConnectConfiguration__c.ApplicationDetailName__c,
			ApplicationConnectConfiguration__c.PermissionAccess__c
		};
	}

	public Schema.SObjectType getSObjectType()
	{
		return ApplicationConnectConfiguration__c.SObjectType;
	}

    public ApplicationConnectConfiguration__c getApplicationConnectConfiguration(Id profileOrUserId)
    {
        ApplicationConnectConfiguration__c applicationConConfiguration = new ApplicationConnectConfiguration__c();

        try 
        {            
            applicationConConfiguration = ApplicationConnectConfiguration__c.getInstance(profileOrUserId);

            if(applicationConConfiguration.Name == null)
            {
                applicationConConfiguration = null;
            }
            return applicationConConfiguration;
        } 
        catch (Exception exp)
        {
            applicationConConfiguration = null;
            return applicationConConfiguration;
        }        
    }

}