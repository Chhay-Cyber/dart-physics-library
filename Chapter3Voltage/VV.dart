

import '../../../ConvertSI.dart';

class VV{
  static String getVV(String value,String format){
    double newValue=double.parse(value);
    if(format==""||format==null||format.isEmpty){
      return value +" V";
    }
    else if(format=="V"){
      return value+" V";
    }
    else if(format=="mV"){
      return value+" "+format+" = " +(newValue/1000).toString()+" V";
    }

    else if(format=="KV"||format=="kV"){
      //mg to g
      return value+" "+format+" = "+SI.splitNum((newValue*1000).toString())+" V";
    }
    else if(format=="MV"){
      //Kg to g
      return value+" "+format+" = "+SI.splitNum((newValue*1000000).toString())+" V";
    }
    else{
      return "Voltage not found value";
    }

  }

  static double getVVValue(String value,String format){
    value=value.trim();
    try{
      double newValue=double.parse(value);
      if(format==""||format==null||format.isEmpty){
        return newValue;
      }
      else if(format=="V"){
        return newValue;
      }
      // else if(format=="eV"){
      //   return newValue*1.6;
      // }
      else if(format=="mV"){
        //mg to g
        return (newValue/1000);
      }
      else if(format=="KV"||format=="kV"){
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