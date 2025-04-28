public class ExternalApplicationConnect 
{		

	// Configure and create the UnitOfWorkFactory for this Application
	public static final Aglib_Application.UnitOfWorkFactory UNITOFWORK = 
		new Aglib_Application.UnitOfWorkFactory(
			fflib_Utility.getUnitOfWorks()
		);	

	// Configure and create the ServiceFactory for this Application
	public static final Aglib_Application.ServiceFactory SERVICE = 
		new Aglib_Application.ServiceFactory( 
			fflib_Utility.getServices()
		);

	// Configure and create the SelectorFactory for this Application
	public static final Aglib_Application.SelectorFactory SELECTOR = 
		new Aglib_Application.SelectorFactory(
			fflib_Utility.getSelectors()
		);

	//Configure and create the DomainFactory for this Application
	public static final Aglib_Application.DomainFactory DOMAIN = 
		new Aglib_Application.DomainFactory(
			ExternalApplicationConnect.SELECTOR,
			fflib_Utility.getDomains()
		);
}