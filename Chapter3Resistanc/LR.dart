class LR{
  static String getL(String value,String format){
    double newValue=double.parse(value);
    if(format==""||format==null||format.isEmpty){
      return value +" m";
    }
    else if(format=="m"){
      return value+" m";
    }
    else if(format=="mm"){
      return value+" "+format+" = " +(newValue/1000).toString()+" m";
    }

    else if(format=="cm"){
      //mg to g
      return value+" "+format+" = "+(newValue/100).toString()+" m";
    }
    else if(format=="dm"){
      //mg to g
      return value+" "+format+" = "+(newValue/10).toString()+" m";
    }
    else if(format=="km"){
      //Kg to g
      return value+" "+format+" = "+(newValue*1000).toString()+" m";
    }
    else{
      return "Length not found value";
    }

  }

  static double getLValue(String value,String format){
    value=value.trim();
    try{
      double newValue=double.parse(value);
      if(format==""||format==null||format.isEmpty){
        return newValue;
      }
      else if(format=="m"){
        return newValue;
      }
      // else if(format=="eV"){
      //   return newValue*1.6;
      // }
      else if(format=="mm"){
        //mg to g
        return (newValue/1000);
      }
      else if(format=="cm"){
        //mg to g
        return (newValue/100);
      }
      else if(format=="dm"){
        //Kg to g
        return (newValue/10);
      }
      else if(format=="km"){
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