class RLA
{
  double r1 = 0, r2 = 0, l1 = 0, l2 = 0, a1 = 0, a2 = 0, rho1=0, rho2=0;

  String r="",rho="",l="",a="";

  RLA(String r,String rho,String l,String a)
  {
    this.r = r;
    this.rho = rho;
    this.l = l;
    this.a = a;
    setR(r);setRho(rho);setL(l); setA(a);

  }

  void setR(String R){
    String r=R.trim();
    if(r.contains(',')){
      List x=r.split(',');
      r1=double.parse(x[0]);
      r2=double.parse(x[1]);
    }
    else{
      r1=double.parse(r);
    }
  }
  void setRho(String R){
    String r=R.trim();
    if(r.contains(',')){
      List x=r.split(',');
      rho1=double.parse(x[0]);
      rho2=double.parse(x[1]);
    }
    else{
      rho1=double.parse(r);
    }
  }
  void setL(String R){
    String r=R.trim();
    if(r.contains(',')){
      List x=r.split(',');
      l1=double.parse(x[0]);
      l2=double.parse(x[1]);
    }
    else{
      l1=double.parse(r);
    }
  }
  void setA(String R){
    String r=R.trim();
    if(r.contains(',')){
      List x=r.split(',');
      a1=double.parse(x[0]);
      a2=double.parse(x[1]);
    }
    else{
      a1=double.parse(r);
    }
  }


}