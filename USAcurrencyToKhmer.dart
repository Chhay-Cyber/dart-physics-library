class Validate{
  static var num=["","មួយ","ពីរ","បី","បួន","ប្រាំ","ប្រាំមួយ","ប្រាំពីរ","ប្រាំបី","ប្រាំបួន"];
  static var twoNum=[
    "","ដប់","ម្ភៃ","សាមសិប","សែសិប","ហាសិប","ហុកសិប","ចិតសិប","ប៉ែតសិប","កៅសិប"
  ];


  static String tNum(String s){
    return twoNum[int.parse(s[0])]+num[int.parse(s[1])];

  }

  static String rNum(String s){
    if(s[0]=="0"){
      return num[int.parse(s[0])]+tNum(s.substring(1));
    }
    return num[int.parse(s[0])]+"រយ"+tNum(s.substring(1));
  }



  static String pNum(String s){
    if(s[0]=="0"){
      return num[int.parse(s[0])]+rNum(s.substring(1));
    }
    return num[int.parse(s[0])]+"ពាន់ "+rNum(s.substring(1));
  }

  static String mNum(String s){
    if(s[0]=="0"){
      return num[int.parse(s[0])]+pNum(s.substring(1));
    }

    return num[int.parse(s[0])]+"ម៉ឺន "+pNum(s.substring(1));
  }
  static String sNum(String s){
    if(s[0]=="0"&&s[1]=="0"){
      return mNum(s);
    }
    return tNum(s.substring(0,2))+"ម៉ឺន "+pNum(s.substring(2));
  }

  static String miNum(String s){
    if(s.length==7){
      return num[int.parse(s[0])]+"លាន "+sNum(s.substring(1));
    }
    else if(s.length==8){
      return tNum(s.substring(0,2))+"លាន "+sNum(s.substring(2));
    }
    else if(s.length==9){
      return rNum(s.substring(0,3))+"លាន "+sNum(s.substring(3));
    }
    else if(s.length==10){
      return pNum(s.substring(0,4))+"លាន "+sNum(s.substring(4));
    }
    return "Invaild value";

  }
  static String num2String(String number){
    number=number.trim().replaceAll(" ","");
    int a=number.length;
    if(a>10){ return "Can't Read";}
    if(a==2){ return tNum(number); }
    if(a==3){  return rNum(number);}
    if(a==4){ return pNum(number);}
    if(a==5){ return mNum(number); }
    if(a==6){ return sNum(number);}
    if(a>=7){ return miNum(number);}
    if(a==1){ return num[int.parse(number)]; };
    return "Invail";
  }
}