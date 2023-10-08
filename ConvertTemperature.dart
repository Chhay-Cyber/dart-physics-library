
import 'dart:math';

import 'package:catex/catex.dart';
import 'package:untitled1/ConvertSI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List colors = [Colors.red, Colors.green, Colors.yellow,Colors.purpleAccent,Colors.indigoAccent,Colors.lightGreenAccent];
Random random = new Random();
int index=0;
List<String> ftemp = ['℃ ទៅ K', '℃ ទៅ ℉','K ទៅ ℃','K ទៅ ℉','℉ ទៅ ℃','℉ ទៅ K'];
class Temper1 extends StatefulWidget {
  // Energy2({Key key}) : super(key: key);

  @override
  _Temper1State createState() => _Temper1State();
}

class _Temper1State extends State<Temper1> {
  String _chosen_t;
  TextEditingController _t= TextEditingController();
  //TextEditingController _t2 = TextEditingController();

  String t="",formla="",title="",format="";

  String result = "";
  String resultValue="";
  @override
  void dispose(){
    super.dispose();
    _t.clear();
  }

  bool _showAnswer=false;

  @override
  Widget build(BuildContext context) {

    return
      SafeArea(
          child: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: Scaffold(
              backgroundColor: Colors.lightBlueAccent,

              appBar: AppBar(
                title: Text("សីតុណ្ហភាព"),
                centerTitle: true,
                backgroundColor: Colors.black,
              ),
              body: Stack(
                children: [

                  Positioned(
                    child:SingleChildScrollView(
                      child: Column(
                        children: [

                          Card(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 2,color:Colors.white),
                                borderRadius: BorderRadius.circular(5.0)
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10.0),

                              child: Column(
                                children: [
                                  Text("បម្លែងសីតុណ្ហភាព"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.wb_sunny_outlined,color: Colors.yellowAccent.shade700,),
                                      Icon(Icons.thermostat_outlined,color: Colors.blueGrey,),
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex:4,
                                        child: Container(
                                          //color: Colors.blue,
                                          // width: 100,
                                          // height: 20,
                                            child: TextField(
                                              inputFormatters: [
                                                FilteringTextInputFormatter.deny(RegExp('[a-zA-Z]')),
                                                LengthLimitingTextInputFormatter(10),
                                              ],
                                              textAlign: TextAlign.right,
                                              decoration: InputDecoration.collapsed(
                                                  hintText: "សូមបញ្ចូលសីតុណ្ហភាព",
                                                  hintStyle: TextStyle(fontSize: 14)
                                              ),
                                              controller: _t,
                                              keyboardType: TextInputType.number,
                                              //maxLength: 10,


                                            )),
                                      ),
                                      Expanded(
                                          flex: 5,
                                          child: Container(
                                            //color: Colors.red,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                //Text("ខ្នាត"),

                                                DropdownButton<String>(
                                                  focusColor: Colors.white,
                                                  value: _chosen_t,
                                                  //elevation: 5,
                                                  style: TextStyle(color: Colors.white),
                                                  iconEnabledColor: Colors.black,
                                                  items: ftemp
                                                      .map<DropdownMenuItem<String>>((String value) {
                                                    return DropdownMenuItem<String>(
                                                      value: value,
                                                      child: Text(
                                                        value,
                                                        style: TextStyle(color: Colors.white),
                                                      ),
                                                    );
                                                  }).toList(),
                                                  hint: Text(
                                                    "",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500),
                                                  ),
                                                  onChanged: (String value) {
                                                    setState(() {
                                                      _chosen_t= value;


                                                    });
                                                  },
                                                ),
                                              ],
                                            ),
                                          )
                                      ),


                                    ],
                                  ),




                                  Center(
                                    child: Column(
                                      children: [
                                        OutlinedButton(

                                            style: OutlinedButton.styleFrom(
                                              //backgroundColor: Colors.yellow.shade700,

                                              shape: new RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(26.0),
                                              ),

                                              side: BorderSide(
                                                width: 2,
                                                color: colors[index],
                                              ),
                                            ),
                                            onPressed: () {
                                              // if(_chosen_t==ftemp[0]){
                                              //   setState(() {
                                              //     result=_chosen_t;
                                              //   });
                                              // }
                                              // else if(_chosen_t==ftemp[1]){
                                              //   setState(() {
                                              //     result=_chosen_t;
                                              //   });
                                              // }

                                              setState(() {

                                                _showAnswer=true;
                                                index=random.nextInt(6);

                                                //℃=>℉','K=>℃
                                                if(_chosen_t==ftemp[0]){
                                                  title="អង្សាសែលស្យុស បំលែងទៅជា កែលវិន";
                                                  formla="K = t+273";
                                                  resultValue="";
                                                  result="K = "+_t.text+"+273 = "+SI.splitNum((double.parse(_t.text)+273).toString())+" K";
                                                  format=_t.text+" ℃ = "+SI.splitNum((double.parse(_t.text)+273).toString())+" K ";

                                                  //resultValue=SI.splitNum( (double.parse(_t2.text)-double.parse(_t1.text)).toString())+" "+_chosen_t;
                                                }
                                                else if(_chosen_t==ftemp[1]){
                                                  title="អង្សាសែលស្យុស បំលែងទៅជា ផារិនហៃ";
                                                  formla=r" F = \frac{9}{5} \times C + 32" ;
                                                  resultValue=r"= \frac{9}{5}\times"+_t.text+"+32";
                                                  result=r" F = "+SI.splitNum((((9/5)*double.parse(_t.text))+32).toString())+" ℉";
                                                  format=_t.text+" ℃ = "+SI.splitNum((((9/5)*double.parse(_t.text))+32).toString())+" ℉";
                                                }
                                                else if(_chosen_t==ftemp[2]){
                                                  title="កែលវិន បំលែងទៅជា  អង្សាសែលស្យុស";
                                                  formla="t = K-273";
                                                  resultValue=" ";
                                                  result="t = "+_t.text+"-273 = "+SI.splitNum((double.parse(_t.text)-273).toString())+" ℃";
                                                  format=_t.text+" K = "+SI.splitNum((double.parse(_t.text)-273).toString())+" ℃";
                                                }
                                                else if(_chosen_t==ftemp[3]){
                                                  title="កែលវិន បំលែងទៅជា ផារិនហៃ";
                                                  formla=r"F = \frac{9}{5} \times ( K - 273)"+"+32";
                                                  resultValue=r" = \frac{9}{5} \times ( "+_t.text+"-273)"+"+32";
                                                  result="F = "+SI.splitNum((((9/5)*(double.parse(_t.text)-273))+32).toString())+" ℉";
                                                  format=_t.text+" K = "+SI.splitNum((((9/5)*(double.parse(_t.text)-273))+32).toString())+" ℉";
                                                }
                                                else if(_chosen_t==ftemp[4]){

                                                  title="ផារិនហៃ បំលែងទៅជា អង្សាសែលស្យុស";
                                                  formla=r"t = \frac{5}{9} \times (F-32 )";
                                                  resultValue=r" = \frac{5}{9} \times ("+_t.text+"-32 )";
                                                  result="t = "+SI.splitNum(((5/9)*(double.parse(_t.text)-32)).toString())+" ℃";
                                                  format=_t.text+" ℉ = "+SI.splitNum(((5/9)*(double.parse(_t.text)-32)).toString())+" ℃";
                                                }
                                                else if(_chosen_t==ftemp[5]){
                                                  title="ផារិនហៃ បំលែងទៅជា កែលវិន";
                                                  formla=r"K = \frac{5}{9} \times (F-32 )+273";
                                                  resultValue=r" = \frac{5}{9} \times ("+_t.text+"-32 )+273";
                                                  result="K = "+SI.splitNum((((5/9)*(double.parse(_t.text)-32))+273).toString())+" K";
                                                  format=_t.text+" ℉ = "+SI.splitNum((((5/9)*(double.parse(_t.text)-32))+273).toString())+" K";
                                                }
                                                else{
                                                  _showAnswer=false;
                                                }

                                                // else{
                                                //   result=_t2.text+"℃ -  "+_t1.text+' ℃';
                                                //   resultValue= SI.splitNum((double.parse(_t2.text)-double.parse(_t1.text)).toString())+' ℃';
                                                //
                                                // }

                                              });

                                            }, child: Text("គណនា"))
                                      ],
                                    ),
                                  ),
                                  Visibility(
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(title),
                                            Row(children: [

                                              Text("តាមរូបមន្ត៖ "),
                                              formla.contains(r"\f")?
                                              CaTeX(formla):Text(formla),
                                            ],),

                                            resultValue.contains(r"\")?
                                            Container(padding:const EdgeInsets.only(left: 80),child: CaTeX(resultValue)):
                                            Text("គេបាន ៖ "),

                                            Text("                  $result"),
                                            SizedBox(height: 3.0,),
                                            Row(
                                              children: [
                                                Text("ដូចនេះ  "),
                                                Container(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Text(format),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(color: Colors.white)
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    visible: _showAnswer,
                                  )
                                ],
                              ),
                            ),
                  ),

                          Icon(Icons.cloud),
                        ],
                      ),
                      ),
                    ),






                ],
              ),
            ),
          ));
  }
}

