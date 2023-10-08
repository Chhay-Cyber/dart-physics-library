

import '../../../ConvertSI.dart';

class TI{
  static String getTime(String value,String format){
    double newValue=double.parse(value);

    if(format==""||format==null||format.isEmpty){
      return value +" s";
    }
    else if(format=="s"){
      return value+" s";
    }

    else if(format=="ms"){
      //mg to g
      return value+" "+format+" = "+(newValue/1000).toString()+" s";
    }
    else if(format=="mn"){
      //cg to g
      return value+" "+format+" = "+SI.splitNum((newValue*60).toString())+" s";
    }
    else if(format=="h"){
      //dg to g
      return value+" "+format+" = "+SI.splitNum((newValue*3600).toString())+" s";
    }
    else{
      return "Duration Time not found value";
    }

  }

  static double getTimeValue(String value,String format){
    value=value.trim();
    try{
      double newValue=double.parse(value);
      if(format==""||format==null||format.isEmpty){
        return newValue;
      }
      else if(format=="s"){
        return newValue;
      }

      else if(format=="ms"){
        //mg to g
        return (newValue/1000);
      }
      else if(format=="mn"){
        //cg to g
        return (newValue*60);
      }
      else if(format=="h"){
        //dg to g
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