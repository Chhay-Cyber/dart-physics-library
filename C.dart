

import '../../../ConvertSI.dart';

class CQ{
  static String getC(String value,String format){
    double newValue=double.parse(value);
    if(format==""||format==null)
      {
        return value+" "+"cal/g℃";
      }
    if(format==r"cal/g℃")
    {
      return value+" "+format;
    }
    else if(format==r"J/kg℃"){
      return value+" "+format+" = "+SI.splitNum((newValue*1/4190).toString())+" cal/g℃";
    }

    return "C not Found";
  }
  
  static double getCValue(String value,String format){
    try{
      double newValue=double.parse(value);
         if(format==""||format==null){
           return newValue;
         }
         else if(format==r"cal/g℃")
         {
            return newValue;
         }
         else if(format==r"J/kg℃"){
           return (newValue*1/4190);
         }
    }
    catch(e){
      return 0;
    }
  
    return 0;
  }

  static String getCJoul(String value,String format){
    double newValue=double.parse(value);
    if(format==""||format==null)
    {
      return value+" "+"J/kg℃";
    }
    if(format==r"J/kg℃")
    {
      return value+" "+format;
    }
    else if(format==r"cal/g℃"){
      return value+" "+format+" = "+SI.splitNum((newValue*4186.798188).toString())+" J/kg℃";
    }

    return "C not Found";
  }

  static double getCJoulValue(String value,String format){
    double newValue;
    try{
      newValue=double.parse(value);
      if(format==""||format==null){
        return newValue;
      }
      else if(format==r"J/kg℃")
      {
        return newValue;
      }
      else if(format==r"cal/g℃"){
        return (newValue*4186.798188);
      }
    }
    catch(e){
      return 0;
    }

    return 0;
  }

}