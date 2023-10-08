

import '../../../ConvertSI.dart';

class PFA{
  static String getA(String value,String format){
    double newValue=double.parse(value);
    if(format==""||format==null||format.isEmpty){
      return value +" ㎡";
    }
    else if(format=="㎡"){
      return value+" ㎡";
    }
    else if(format=="m㎡"){
      return value+" "+format+" = " +(newValue/1000000).toString()+" ㎡";
    }

    else if(format=="c㎡"){
      //mg to g
      return value+" "+format+" = "+(newValue/10000).toString()+" ㎡";
    }
    else if(format=="d㎡"){
      //mg to g
      return value+" "+format+" = "+(newValue/100).toString()+" ㎡";
    }
    // else if(format=="km"){
    //   //Kg to g
    //   return value+" "+format+" = "+(newValue*1000).toString()+" ㎡";
    // }
    else{
      return "Area not found value";
    }

  }

  static double getAValue(String value,String format){
    value=value.trim();
    try{
      double newValue=double.parse(value);
      if(format==""||format==null||format.isEmpty){
        return newValue;
      }
      else if(format=="㎡"){
        return newValue;
      }
      // else if(format=="eV"){
      //   return newValue*1.6;
      // }
      else if(format=="m㎡"){
        //mg to g
        return (newValue/1000000);
      }
      else if(format=="d㎡"){
        //mg to g
        return (newValue/100);
      }
      else if(format=="c㎡"){
        //Kg to g
        return (newValue/10000);
      }
      // else if(format=="km"){
      //   return (newValue*1000);
      // }
      else{
        return 0;
      }
    }catch(ex){
      print("Invailid "+ex.toString());
    }

    return 0;
  }

  static String getP(String value,String format){
    double newValue=double.parse(value);
    if(format==""||format==null||format.isEmpty){
      return value +" Pa";
    }
    else if(format=="Pa"){
      return value+" Pa";
    }
    else if(format==r"N/㎡"){
      return value+r" N/㎡";
    }
    else if(format=="kPa"){
      return value+" "+format+" = "+SI.splitNum((newValue*1000).toString())+" Pa";
    }
    else if(format=="atm"){
      return value+" "+format+" = " +(newValue*101300).toString()+" Pa";
    }

    // else if(format=="c㎡"){
    //   //mg to g
    //   return value+" "+format+" = "+(newValue/10000).toString()+" ㎡";
    // }
    // else if(format=="d㎡"){
    //   //mg to g
    //   return value+" "+format+" = "+(newValue/100).toString()+" ㎡";
    // }
    // else if(format=="km"){
    //   //Kg to g
    //   return value+" "+format+" = "+(newValue*1000).toString()+" ㎡";
    // }
    else{
      return "Pressure not found value";
    }

  }

  static double getPValue(String value,String format){
    value=value.trim();
    try{
      double newValue=double.parse(value);
      if(format==""||format==null||format.isEmpty){
        return newValue;
      }
      else if(format=="Pa"||format=="N/㎡"){
        return newValue;
      }
      // else if(format=="eV"){
      //   return newValue*1.6;
      // }
      else if(format=="kPa"){
        //mg to g
        return (newValue*1000);
      }
      // else if(format=="d㎡"){
      //   //mg to g
      //   return (newValue/10000);
      // }
      // else if(format=="c㎡"){
      //   //Kg to g
      //   return (newValue/100);
      // }
      // else if(format=="km"){
      //   return (newValue*1000);
      // }
      else{
        return 0;
      }
    }catch(ex){
      print("Invailid "+ex.toString());
    }

    return 0;
  }

  static String getF(String value,String format){
    //double newValue=double.parse(value);
    if(format==""||format==null||format.isEmpty){
      return value +" N";
    }
    else if(format=="N"){
      return value+" N";
    }
    // else if(format=="m㎡"){
    //   return value+" "+format+" = " +(newValue/1000000).toString()+" ㎡";
    // }
    //
    // else if(format=="c㎡"){
    //   //mg to g
    //   return value+" "+format+" = "+(newValue/10000).toString()+" ㎡";
    // }
    // else if(format=="d㎡"){
    //   //mg to g
    //   return value+" "+format+" = "+(newValue/100).toString()+" ㎡";
    // }
    else{
      return "Force not found value";
    }

  }

  static double getFValue(String value,String format){
    value=value.trim();
    try{
      double newValue=double.parse(value);
      if(format==""||format==null||format.isEmpty){
        return newValue;
      }
      else if(format=="N"){
        return newValue;
      }
      // else if(format=="eV"){
      //   return newValue*1.6;
      // }
      // else if(format=="m㎡"){
      //   //mg to g
      //   return (newValue/1000000);
      // }
      // else if(format=="d㎡"){
      //   //mg to g
      //   return (newValue/10000);
      // }
      // else if(format=="c㎡"){
      //   //Kg to g
      //   return (newValue/100);
      // }
      // else if(format=="km"){
      //   return (newValue*1000);
      // }
      else{
        return 0;
      }
    }catch(ex){
      print("Invailid "+ex.toString());
    }

    return 0;
  }

}