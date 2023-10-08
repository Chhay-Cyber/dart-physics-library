class Temperature{
  static double ktoC(double K){
    return K-273;
  }
  static double kToF(double K){
    return ((K-273)*(9/5))+32;
  }

  static double cToK(double C){
    return C+273;
  }
  static double cToF(double C){
    //find Farenhi
    return (C*(9/5))+32;
  }

  static double ftoC(double F){
    return (F-32)*(5/9);
  }
  static double ftoK(double F){
    return ((F-32)*(5/9))+273;
  }
  static String ktoC_(String K){
    //double k=double.parse(K);
    return "=";
  }


}