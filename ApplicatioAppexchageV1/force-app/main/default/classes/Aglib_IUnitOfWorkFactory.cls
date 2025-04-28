public interface Aglib_IUnitOfWorkFactory
{
	Aglib_ISObjectUnitOfWork newInstance();
	Aglib_ISObjectUnitOfWork newInstance(Aglib_SObjectUnitOfWork.IDML dml);
	Aglib_ISObjectUnitOfWork newInstance(List<SObjectType> objectTypes);
	Aglib_ISObjectUnitOfWork newInstance(List<SObjectType> objectTypes, Aglib_SObjectUnitOfWork.IDML dml);
}