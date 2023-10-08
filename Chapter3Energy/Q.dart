import '../../../ConvertSI.dart';

class Energy{

  // double mass,c,ti,tf,deltaT;
  // Energy(this.mass,this.c,this.deltaT,this.ti,this.tf);
  // Energy.way1(double mass,double c,double delT){
  //   this.mass=mass;this.c=c;this.deltaT=delT;
  // }
  // double way1(){
  //   return mass*c*deltaT;
  // }
  // Energy.way2(double mass,double c,double ti,double tf){
  //   this.mass=mass;this.c=c;this.ti=ti;this.tf;
  // }
  // double way2(){
  //   return mass*c*(tf-ti);

  // }

  // static List<String> fmass = ['mg', 'cg', 'dg', 'kg'];
  // static List<String> fc = ['g/cal ℃', 'kg/cal ℃', 'kg/J ℃'];
  // static List<String> ftemp = ['℃', '°K', '℉'];
  // static List<String> fE=['J','Cal'];

  //Sample List<string> lformatMass
  

  // To gram mass




  static String getQ(String value,String format){
    try{
      double newValue=double.parse(value);

    if(format==""||format==null){
      return value +" Cal";
    }
    else if(format=="cal"){
      return value+" cal";
    }
    else if(format=="J"){
    
      return value+" "+format+" = "+SI.splitNum(((newValue/419)*100).toString())+" cal";
    } 
    else{
      return "Energy not found value";
    }
    }
    catch(e){
      print(" Energy parse Error .");

    }
    return "Energy not found";
  }

  static double getQValue(String value,String format){
    try{
      double newValue=double.parse(value);

    if(format==""||format==null){
      return newValue ;
    }
    else if(format=="cal"){
      return newValue;
    }
    else if(format=="J"){
    
      return ((newValue/419)*100);
    } 
    else{
      return 0;
    }
    }
    catch(e){
      print(" Energy parse Error .");

    }
    return 0;
  }

}