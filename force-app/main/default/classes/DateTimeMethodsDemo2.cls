public  class DateTimeMethodsDemo2 {
    public void printSubscriptionEndDate(){

        Date subscriptionStartDate = date.today();

        //end date is after 1000 days
        Date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('Subscription end date is ' + subscriptionEndDate);

        integer endDateYear = subscriptionEndDate.year();
        system.debug('subscription end date year is ' + endDateYear);

        integer endDateMonth = subscriptionEndDate.month();
        system.debug('subscription end date month is ' + endDateMonth);


    }
         public void offerEndDateTime(){

            DateTime offerStartDt = Datetime.now();

            Datetime offerEndDt = offerStartDt.addHours(51);
            system.debug('offer end datetime is ' + offerEndDt);

            Date offerEndDATE = offerEndDt.date();
            system.debug('offer end Date is ' + offerEndDATE);
         }

}
