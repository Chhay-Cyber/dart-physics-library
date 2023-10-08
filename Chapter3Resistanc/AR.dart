class AR{
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
        return (newValue/10000);
      }
      else if(format=="c㎡"){
        //Kg to g
        return (newValue/100);
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
}