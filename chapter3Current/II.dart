

import '../../../ConvertSI.dart';

class II{
  
  static String getCurrent(String value,String format){

    double newValue=double.parse(value);
    if(format==""||format==null||format.isEmpty){
      return value +" A";
    }
    else if(format=="A"){
      return value+" A";
    }

    else if(format=="mA"){
      //mg to g
      return value+" "+format+" = "+(newValue/1000).toString()+" A";
    }
    else if(format=="kA"||format=="KA"){
      //Kg to g
      return value+" "+format+" = "+SI.splitNum((newValue*1000).toString())+" A";
    }
    else{
      return "Current not found value";
    }

  }

  static double getCurrentValue(String value,String format){
    value=value.trim();
    try{
      double newValue=double.parse(value);
      if(format==""||format==null||format.isEmpty){
        return newValue;
      }
      else if(format=="A"){
        return newValue;
      }

      else if(format=="mA"){
        //mg to g
        return (newValue/1000);
      }
      else if(format=="kA"||format=="KA"){
        //Kg to g
        return (newValue*1000);
      }
    }catch(ex){
      print("Invailid "+ex.toString());
    }

    return 0;
  }

}