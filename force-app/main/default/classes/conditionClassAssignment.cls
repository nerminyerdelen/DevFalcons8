public  class conditionClassAssignment {
   public string ifClassMethod(integer month){
    string outputMonth  = '';
      if(month == 1){
        outputMonth = 'January';

      }else if(month ==2){
        outputMonth = 'February';

      }else {
        outputMonth = 'Not a valid Month';

      }
      return outputMonth;
    } 
    public string caseMethod(string nameOfMonth){
        string outputQuarter ='';
        switch on nameOfMonth{
            when 'January','February','March'{
                nameOfMonth = 'nameOfMonths 1';
            }
            when 'April','May','June'{
                nameOfMonth = 'nameOfMonths 2';
            }
            when 'July','August','September'{
                nameOfMonth = 'nameOfMonths 3';
            }
            when 'October','November','December'{
                nameOfMonth = 'nameOfMonths 4';
            }
            when else{
                nameOfMonth = 'Enter a proper month name';
            }
            

        }
        return outputQuarter;
       }
    }
