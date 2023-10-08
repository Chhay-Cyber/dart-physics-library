

import '../../../ConvertSI.dart';

class QI{
  static String getQI(String value,String format){
    double newValue=double.parse(value);
    if(format==""||format==null||format.isEmpty){
      return value +" C";
    }
    else if(format=="C"){
      return value+" C";
    }

    else if(format=="mC"){
      //mg to g
      return value+" "+format+" = "+(newValue/1000).toString()+" C";
    }
    else if(format=="Ah"){
      //Kg to g
      return value+" "+format+" = "+value+"×3600= "+SI.splitNum((newValue*3600).toString())+" C";
    }
    else{
      return "Current not found value";
    }

  }
  static double getQIValue(String value,String format){
    value=value.trim();
    try{
      double newValue=double.parse(value);
      if(format==""||format==null||format.isEmpty){
        return newValue;
      }
      else if(format=="C"){
        return newValue;
      }

      else if(format=="mC"){
        //mg to g
        return (newValue/1000);
      }
      else if(format=="Ah"){
        //Kg to g
        return (newValue*3600);
      }
      else{
        return 0;
      }
    }catch(ex){
      print("Invailid "+ex.toString());
    }

    return 0;
  }

}