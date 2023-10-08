
import 'ConvertSI.dart';

class TimeSI {


  static String secondsToTime(int n)
  {

    int day = (n ~/ (24 * 3600));

    n = n % (24 * 3600);
    int hour = (n ~/ 3600);

    n %= 3600;

    int minutes =(n ~/ 60) ;

    n %= 60;
    int seconds = n;

    //print(day.toString() +" days "+ hour.toString()+"   hours "+minutes.toString()+"  minutes "+seconds.toString()+"  seconds");

    String time="";
    if(day==0){ time+=""; }else{ time+=day.toString()+" day ";}
    if(hour==0){ time+""; }else{ time+=hour.toString()+" h ";}
    if(minutes==0){ time+="";}else{ time+=minutes.toString()+" mn ";}
    if(seconds==0){ time+="";}else{ time+=seconds.toString()+" s ";}

    return time;
  }


  static String getTime(String hour,String minute,String second)
  {
    double h;
    double m;
    double s;
    h=double.parse(hour);
    m=double.parse(minute);
    s=double.parse(second);
    if(hour=="0"&&minute=="0"&&second!="0"){
      return second+ "s";
    }
    if(hour=="0"&&minute!="0"&&second=="0"){
      return minute+"mn ="+minute+"×60 ="+SI.splitNum((m*60).toString())+"s ";
    }
    if(hour=="0"&&minute!=""&&second!=""){
      return minute+"mn "+second+"s = "+minute+"×60 + "+second+" ="+SI.splitNum(((m*60)+s).toString())+"s ";
    }

    if(hour!=""&&minute=="0"&&second=="0"){
      return hour+"h = "+hour+"×3600 = "+SI.splitNum((h*3600).toString())+"s ";
    }
    if(hour!=""&&minute!=""&&second=="0"){
      return hour+"h"+minute+"mn = "+hour+"×3600 + "+minute+"×60 = "+SI.splitNum(((h*3600)+(m*60)).toString())+"s ";
    }
    if(hour!=""&&minute=="0"&&second!=""){
      return hour+"h "+second+"s = "+hour+"×3600 + "+second+"s ="+SI.splitNum(((h*3600)+s).toString())+"s ";

    }


    if(hour!="0"&&minute!="0"&&second!="0"){
      return hour+"h "+minute+"mn "+second+"s = "+hour+"×3600 + "+minute+"×60 + " +second+" ="+SI.splitNum(((h*3600)+(m*60)+s).toString())+"s ";
    }
    if(hour=="0"&&minute=="0"&&second=="0"){
      return "សូមបញ្ចូលទិន្នន័យអោយបានត្រឹមត្រូវ";
    }




    return "សូមបញ្ចូលទិន្នន័យអោយបានត្រឹមត្រូវ";
  }
  static double getTimeValue(String hour,String minute,String second)
  {
    double h=double.parse(hour);
    double m=double.parse(minute);
    double s=double.parse(second);
    //
    // if(hour=="0"&&minute=="0"){
    //   return s;
    // }
    // if(minute=="0"&&second=="0"){
    //   return (h*3600);
    // }
    // if(hour=="0"&&second=="0"){
    //   return (m*60);
    // }
    //
    // if(hour=="0"){
    //   return (m*60+s);
    //
    // }
    // if(minute=="0"){
    //   return (h*3600+s);
    //
    // }
    // if(second=="0"){
    //
    //   return (h*3600)+(m*60+s);
    //
    // }
    // if(hour!="0"&&minute!="0"&&second!="0"){
    //   return ((h*3600)+(m*60+s)+s);
    //
    // }




    return (h*3600)+(m*60)+s;
  }



}