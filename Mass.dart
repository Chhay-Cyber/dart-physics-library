

import '../../../ConvertSI.dart';

class MassQ{
  
  static String getMassGram(String value,String format){
    double newValue=double.parse(value);

    if(format==""||format==null){
      return value +" g";
    }
    else if(format=="g"){
      return value+" g";
    }
    else if(format=="mg"){
      //mg to g
      return value+" "+format+" = "+(newValue/1000).toString()+" g";
    }
    else if(format=="cg"){
      //cg to g
      return value+" "+format+" = "+(newValue/100).toString()+" g";
    }
    else if(format=="dg"){
      //dg to g
      return value+" "+format+" = "+(newValue/10).toString()+" g";
    }
    else if(format=="kg"||format=="Kg"||format=="l"){
      //Kg to g
      return value+" "+format+" = "+SI.splitNum((newValue*1000).toString())+" g";
    }
    else{
      return "mass not found value";
    }

  }
  
  static double getMassGramValue(String value,String format){
    value=value.trim();
    try{
      double newValue=double.parse(value);
      if(format==""||format==null){
      return newValue;
    }
    else if(format=="g"){
      return newValue;
    }
    else if(format=="mg"){
      //mg to g
      return (newValue/1000);
    }
    else if(format=="cg"){
      //cg to g
      return (newValue/100);
    }
    else if(format=="dg"){
      //dg to g
      return (newValue/10);
    }
    else if(format=="kg"||format=="Kg"||format=="l"){
      //Kg to g
      return (newValue*1000);
    }
    else{
      return 0;
    }
    }catch(ex){
      print("Invailid "+ex.toString());
    }
    
    return 0;
  }

  static String getMassKg(String value,String format){
    double newValue=double.parse(value);

    if(format==""||format==null){
      return value +" kg";
    }
    else if(format=="kg"){
      return value+" kg";
    }
    else if(format=="g"){
      //mg to g
      return value+" "+format+" = "+(newValue/1000).toString()+" kg";
    }
    else if(format=="mg"){
      //mg to g
      return value+" "+format+" = "+(newValue/1000000).toString()+" kg";
    }
    else if(format=="cg"){
      //cg to g
      return value+" "+format+" = "+(newValue/100000).toString()+" g";
    }
    else if(format=="dg"){
      //dg to g
      return value+" "+format+" = "+(newValue/10000).toString()+" g";
    }
    else if(format=="l"){
      return value+" "+format+" = "+newValue.toString()+" kg";
    }
    else{
      return "mass not found value";
    }

  }

  static double getMassKgValue(String value,String format){
    value=value.trim();
    try{
      double newValue=double.parse(value);
      if(format==""||format==null){
        return newValue;
      }
      else if(format=="kg"){
        return newValue;
      }

      else if(format=="g"){
        //mg to g
        return (newValue/1000);
      }
      else if(format=="mg"){
        //mg to g
        return (newValue/1000000);
      }
      else if(format=="cg"){
        //cg to g
        return (newValue/100000);
      }
      else if(format=="dg"){
        //dg to g
        return (newValue/10000);
      }

      else if(format=="kg"||format=="Kg"||format=="l"){
        //Kg to g
        return (newValue*1000);
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