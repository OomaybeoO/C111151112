import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('早安咖啡'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                                    label: '個人自傳',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
                                    label: '競賽紀錄',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.business),
                                    label: '未來目標',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
                                    label: '程式成品',
                                    ),
          ],
          onTap: (index) { setState(() {
                                       _currentindex=index;
                                       if (index!=0) {
                                         player.stop();
                                       }
                         });
        },
      ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我出生在一個很平凡但很美滿的小家庭，父母親都是工廠作業員，'
      '而姊姊和我都還在學校求學。父母幾乎都不管我們，父母親只要求保持健康。'
      '因為沒有健康的身體，就算有再多的才華、再大的抱負也無法發揮出來。'
      '又因為家境並不富裕，所以必須專心於課業上，學得一技之長。'
  ;
  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("Free_Test_Data_1MB_MP3.mp3"));
    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(
            padding:EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("C111151112 蔡尚儒",style: TextStyle(fontSize:24,fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
          Container(color: Colors.white,child: Image.asset('images/stu01.jpg'),height: 400,width: 400),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.amberAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,style: TextStyle(fontSize: 20),),
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  //final String s2='高職有著許多的實習課程，尤其是電路焊接，因為對電路原理比較有興趣，所以有認真的把課本上的電路圖與實際焊接的樣子連結起來，因此比別人更加熟悉，可以幫助同學尋找問題點。'

  //;
  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("Panic Room (Acoustic).mp3"));
    return Container(
      child:Column(children: [
              Container(height: 400,width:  400,child:
                ListView(
                  children: [//條列式參考
                    Text("       #111專題競賽",style: TextStyle(fontSize:32,fontWeight:FontWeight.bold,)),
                    Container(color: Colors.white,child: Image.asset('images/z1.jpg'),height: 400,width: 400),
                    SizedBox(height: 40,),
                    Text("       #111技藝競賽",style: TextStyle(fontSize:32,fontWeight:FontWeight.bold,)),
                    Container(color: Colors.white,child: Image.asset('images/z2.jpg'),height: 400,width: 400),
                    SizedBox(height: 40,),
                    Text("       #109專題競賽",style: TextStyle(fontSize:32,fontWeight:FontWeight.bold,)),
                    Container(color: Colors.white,child: Image.asset('images/qr1.jpg'),height: 400,width: 400),
                    SizedBox(height: 40,),
                  ],
                ),
              ),
        ],
      ),);
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          Row(
              children: [
                Container(height: 400,width: 400,
                  child: ListView(
                    children: [//條列式參考
                      Text('1. 學好英文',style: TextStyle(fontSize:32,fontWeight:FontWeight.bold,)),
                      SizedBox(height: 40,),
                      Text('2. 實作能力',style: TextStyle(fontSize:32,fontWeight:FontWeight.bold,)),
                      SizedBox(height: 40,),
                      Text('3. 考取證照',style: TextStyle(fontSize:32,fontWeight:FontWeight.bold,)),
                      SizedBox(height: 40,),
                      Text('4. 人際關係',style: TextStyle(fontSize:32,fontWeight:FontWeight.bold,)),
                    ],
                  ),
                ),
              ],),
        ],
      ),);
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(children: [
        Container(height: 400,width:  400,child:
        ListView(
          children: [//條列式參考
            Text("#111專題競賽",style: TextStyle(fontSize:48,fontWeight:FontWeight.bold,)),
            Text("控制網頁的部分使用:                          css html javascript                             使用GITHUB當免費網頁空間",style: TextStyle(fontSize:24,fontWeight:FontWeight.bold,)),
            SizedBox(height: 40,),
            Text("硬體的部分使用:                            webduino arduino DC-LED                   和自製繼電器...所構成的大雜燴 ",style: TextStyle(fontSize:24,fontWeight:FontWeight.bold,)),
            SizedBox(height: 40,),
            Container(color: Colors.white,child: Image.asset('images/a1.jpg'),height: 400,width: 400),
            SizedBox(height: 40,),
            Container(color: Colors.white,child: Image.asset('images/a2.jpg'),height: 400,width: 400),
          ],
        ),
        ),
      ],
      ),);
  }
}
