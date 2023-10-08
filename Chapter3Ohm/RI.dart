
import '../../../ConvertSI.dart';

class RI{
  static String getR(String value,String format){
    double newValue=double.parse(value);
    if(format==""||format==null||format.isEmpty){
      return value +" ";
    }
    else if(format=="Ω"){
      return value+" Ω";
    }
    else if(format=="mΩ"){
      return value+" "+format+" = " +(newValue/1000).toString()+" Ω";
    }

    else if(format=="KΩ"||format=="kΩ"){
      //mg to g
      return value+" "+format+" = "+SI.splitNum  ((newValue*1000).toString())+" Ω";
    }
    else if(format=="MΩ"){
      //Kg to g
      return value+" "+format+" = "+SI.splitNum((newValue*1000000).toString())+" V";
    }
    else{
      return "Resistor not found value";
    }

  }

  static double getRValue(String value,String format){
    value=value.trim();
    try{
      double newValue=double.parse(value);
      if(format==""||format==null||format.isEmpty){
        return newValue;
      }
      else if(format=="Ω"){
        return newValue;
      }
      // else if(format=="eV"){
      //   return newValue*1.6;
      // }
      else if(format=="mΩ"){
        //mg to g
        return (newValue/1000);
      }
      else if(format=="KΩ"||format=="kΩ"){
        //mg to g
        return (newValue*1000);
      }
      else if(format=="MΩ"){
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