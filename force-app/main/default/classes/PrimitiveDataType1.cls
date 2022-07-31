public  class PrimitiveDataType1 {
  public void printBasicDataType(){
    string batchName = 'Falcons 8';
    integer totalCandidates = 50;
    boolean isAdminCompleted = true;

    system.debug(batchName);
    system.debug(totalCandidates);
    system.debug(isAdminCompleted);

    string batchDescription = batchName + ' are the first';
    system.debug(batchDescription);

  }
  public void printBasicDataType2(){
    Decimal decimalValue = 27.01;
    system.debug(' decimal value = ' + decimalValue);

    Long longValue =  2147483648L;
    system.debug('long value = ' + longValue);

  }
}
