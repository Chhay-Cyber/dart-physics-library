class RhoR{
  static String getRho(String value,String format){
    double newValue=double.parse(value);
    if(format==""||format==null||format.isEmpty){
      return value +" Ωm";
    }

    else if(format=="Ωm"){
      return value+" Ωm";
    }
    else if(format=="Ωµm"){
      return value+" "+format+" = " +(newValue/1000000).toString()+" Ωm";

    }
    else if(format=="Ωmm"){
      return value+" "+format+" = " +(newValue/1000).toString()+" Ωm";
    }

    else if(format=="Ωcm"){
      //mg to g
      return value+" "+format+" = "+(newValue/100).toString()+" Ωm";
    }
    else if(format=="Ωdm"){
      //mg to g
      return value+" "+format+" = "+(newValue/10).toString()+" Ωm";
    }
    else if(format=="Ωkm"){
      //Kg to g
      return value+" "+format+" = "+(newValue*1000).toString()+" Ωm";
    }
    else{
      return "Rho not found value";
    }

  }

  static double getRhoValue(String value,String format){
    value=value.trim();
    try{
      double newValue=double.parse(value);
      if(format==""||format==null||format.isEmpty){
        return newValue;
      }
      else if(format=="Ωm"){
        return newValue;
      }
      // else if(format=="eV"){
      //   return newValue*1.6;
      // }
      else if(format=="Ωµm"){
        return (newValue/1000000);
      }
      else if(format=="Ωmm"){
        //mg to g
        return (newValue/1000);
      }
      else if(format=="Ωcm"){
        //mg to g
        return (newValue/100);
      }
      else if(format=="Ωdm"){
        //Kg to g
        return (newValue/10);
      }
      else if(format=="Ωkm"){
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