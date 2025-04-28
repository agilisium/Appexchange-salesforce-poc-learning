public with sharing class ApplicationConnectFileServiceImpl implements IApplicationConnectFileService
{
    public void insertFileDetails(ApplicationFileParameter applicationFileParameter)
    {

        System.debug('ApplicationConnectFileServiceImpl.insertFileDetails() called with applicationParameter:' + applicationFileParameter);
        Aglib_ISObjectUnitOfWork uow = ExternalApplicationConnect.UnitOfWork.newInstance();

        if(isCreatable() == true){
            ApplicationConnectFile__c file = new ApplicationConnectFile__c();
        }

    }

    public void insertFileAttachment()
    {
        System.debug('ApplicationConnectFileServiceImpl.insertFileDetails() called');
    }

    public Boolean isCreatable() {
        return Schema.sObjectType.ApplicationConnectFile__c.isCreateable();
    }    
}