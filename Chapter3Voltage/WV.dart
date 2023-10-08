

import '../../../ConvertSI.dart';

class WV{
  static String getWV(String value,String format){
    double newValue=double.parse(value);
    if(format==""||format==null||format.isEmpty){
      return value +" J";
    }
    else if(format=="J"){
      return value+" J";
    }
    else if(format=="Cal"){
      return value+" "+format+" = " +(newValue*4.190).toString()+" J";
    }
    else if(format=="mJ"){
      return value+" "+format+" = "+(newValue/1000).toString()+" J";
    }
    else if(format=="KJ"){
      //mg to g
      return value+" "+format+" = "+SI.splitNum((newValue*1000).toString())+" J";
    }
    else if(format=="MJ"){
      //Kg to g
      return value+" "+format+" = "+SI.splitNum ((newValue*1000000).toString())+" J";
    }
    else{
      return "Work not found value";
    }

  }

  static double getWVValue(String value,String format){
    value=value.trim();
    try{
      double newValue=double.parse(value);
      if(format==""||format==null||format.isEmpty){
        return newValue;
      }
      else if(format=="J"){
        return newValue;
      }
      // else if(format=="eV"){
      //   return newValue*1.6;
      // }
      else if(format=="Cal"){
        //mg to g
        return (newValue*4.190);
      }
      else if(format=="mJ"){
        return (newValue/1000);
      }
      else if(format=="KJ"){
        //mg to g
        return (newValue*1000);
      }
      else if(format=="MJ"){
        //Kg to g
        return (newValue*1000000);
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