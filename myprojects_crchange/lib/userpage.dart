import 'dart:ui';

import 'package:cryptochange/classes/classes.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';
import 'package:teledart/teledart.dart';
import 'firstpage.dart';
import 'курсы.dart';
import 'dart:math';
import 'package:cryptochange/dartbot.dart';
import 'main.dart';

String username = 'kinclip14@gmail.com';
String password = '12e712GSD912821412efasdaWDEWREdsi';

final smtpServer = gmail(username, password);


Coin _currentcoin = allcoins[0];

String svalue = '1';
double dvalue = 1.0;
double dvalue1 = 1.0;

String email = '';

//String c1 ='Bitcoin',c2='Bitcoin';

List<int> color = [
  3,
  255,
  255,
  3,
  255,
  255,
];

int fontsize1 = 14;

int type1 = 0;
int type2 = 0;

int typeforcourse1 = 1;
int typeforcourse2 = 1;

bool f1= false;
int v1 = 0;
int v2 = 0;
int i1 = 17;
int i2 = 17;



String mystr = "Введите номер вашего кошелька";

class UserPanel1 extends StatefulWidget {
  const UserPanel1({Key? key}) : super(key: key);

  @override
  State<UserPanel1> createState() => _UserPanel1State();
}

class _UserPanel1State extends State<UserPanel1> {
  late TextEditingController _controller;
  late TextEditingController _controller1;
  late TextEditingController _controller2;
  final myKey = GlobalKey<DropdownSearchState<Coin>>();

  bool check1 = true;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller1 = TextEditingController();
    _controller2 = TextEditingController();

  }

  @override
  void dispose(){
    _controller1.dispose();
    _controller2.dispose();

    _controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = new ScrollController();
    return MediaQuery.of(context).size.width>=1000?
    Scaffold(
        body:
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(8, 16, 28, 1.0),
                    Color.fromRGBO(6, 23, 45, 1.0),
                    Color.fromRGBO(8, 16, 28, 1.0),

                  ],
                )),

            child:    Container(
              //    color: Colors.black45,
                child:
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.4,
                            height: 70,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/logo.png"),
                                  fit: BoxFit.fitWidth),
                            ),),
                          SizedBox()
                        ],
                      ),

                      Row(
                          children: [
                            MediaQuery.of(context).size.width>1000?
                            Container(
                              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              height: MediaQuery.of(context).size.height*0.6,
                              width: MediaQuery.of(context).size.width*0.25,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  //qwe
                                  Container(
                                      width: MediaQuery.of(context).size.width*0.15,
                                      height: 70,
                                      color: Colors.transparent,
                                      child: TextButton(onPressed: (){
                                        Navigator.pushNamed(context, '/');
                                      }, child: Row(children: [
                                        Icon(Icons.currency_exchange,color: Color.fromRGBO(246, 201, 67, 1.0),size: 18,),
                                        SizedBox(width: 10,),
                                        Text('Главная',style: TextStyle(
                                          color: Color.fromRGBO(246, 201, 67, 1.0),
                                          fontSize: 14,
                                        ),)
                                      ]))
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width*0.15,
                                      height: MediaQuery.of(context).size.width>=1000?70:MediaQuery.of(context).size.width>=700?60:30,
                                      child: TextButton(onPressed: (){
                                        Navigator.pushNamed(context, '/2');
                                      }, child:
                                      Row(children: [
                                        Icon(Icons.handshake_sharp,color: Colors.white,size: 18,),
                                        SizedBox(width: 10,),
                                        Text('Партнёрам',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,

                                        ),)
                                      ]))),

                                  Container(
                                      width: MediaQuery.of(context).size.width*0.15,
                                      height: 70,
                                      child: TextButton(onPressed: (){
                                        Navigator.pushNamed(context, '/6');
                                      }, child:
                                      Row(children: [
                                        Icon(Icons.support_agent, color: Colors.white,size: 18,),
                                        SizedBox(width: 10,),
                                        Text('Техподдержка',style: TextStyle(
                                          //+(typeforcourse1).toString()+' '+(typeforcourse2).toString()
                                          color: Colors.white,
                                          fontSize: 14,

                                        ),)
                                      ]))),

                                  Container(
                                      width: MediaQuery.of(context).size.width*0.15,
                                      height: 70,
                                      child: TextButton(onPressed: (){
                                        Navigator.pushNamed(context, '/1');
                                      }, child:
                                      Row(children: [
                                        Icon(Icons.stacked_bar_chart,color: Colors.white, size: 18,),
                                        SizedBox(width: 10,),

                                        Text('Тарифы',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,

                                        ),)
                                      ]))),

                                  Container(
                                      width: MediaQuery.of(context).size.width*0.15,
                                      height: 70,
                                      child: TextButton(onPressed: (){
                                        Navigator.pushNamed(context, '/3');

                                      }, child:
                                      Row(children: [
                                        Icon(Icons.currency_bitcoin,color: Colors.white,size: 18,),
                                        SizedBox(width: 10,),

                                        Text('Резервы',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,

                                        ),)
                                      ]))),
                                ],
                              ),
                            ):
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child:
                              Container(),
                            ),
                            Column(
                              children: [

                                Container(
                                  //  color: Colors.white24,
                                  width: MediaQuery.of(context).size.width<=1000?MediaQuery.of(context).size.width*0.9
                                      :MediaQuery.of(context).size.width*0.6,
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        // color: Colors.black12 ,
                                        margin: EdgeInsets.fromLTRB(0,40,0,20),
                                        width: 300,
                                        height:45,
                                        child:  Text('МУЛЬТИВАЛЮТНЫЙ ОБМЕННЫЙ СЕРВИС', style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          //   fontWeight: FontWeight.bold
                                        ),),
                                      ),

                                      Container(
                                        child: Row(
                                          children: [

                                            route=='/'?Container(
                                                margin: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 2
                                                  ),                              ),
                                                width: MediaQuery.of(context).size.width*0.1,
                                                height: 45,

                                                child: TextButton(onPressed: ()async{
                                                  Navigator.pushNamed(context, '/4');
                                                }, child:
                                                (
                                                    Text('Вход',style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,

                                                    ),)
                                                ))):Container(
                                                width: MediaQuery.of(context).size.width*0.1,
                                                height: 70,
                                                child: TextButton(onPressed: (){
                                                  showDialog(context: context, builder: (BuildContext context){
                                                    return AlertDialog(
                                                      actionsPadding: EdgeInsets.all(0),
                                                      // title: Text('Add name/important/deadline'),
                                                      content:
                                                      Container(
                                                          height: 200,
                                                          width: 200,
                                                          color: Colors.white70,
                                                          child:
                                                          Column(
                                                            children: [
                                                              Text('Хотите выйти?')
                                                            ],
                                                          )),
                                                      actions: [
                                                        TextButton(onPressed: (){
                                                          route='/';
                                                          Navigator.pushNamed(context, '/');
                                                        }, child: Text('Да', style: TextStyle(
                                                            color: Colors.black
                                                        ),))
                                                      ],
                                                    );
                                                  });
                                                }, child:
                                                (
                                                    Container(
                                                        width: MediaQuery.of(context).size.width*0.1,
                                                        height: 45,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                                          color: Colors.black38,
                                                        ),
                                                        child: Center(child:Text('Выход',style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                        ),))
                                                    ))
                                                )),

                                            route=='/'?Container(
                                                margin: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                                  color: Colors.black38,
                                                ),
                                                width: MediaQuery.of(context).size.width*0.1,
                                                height: 45,
                                                child: TextButton(onPressed: (){
                                                  Navigator.pushNamed(context, '/5');
                                                }, child:
                                                (
                                                    Text('Регистрация',style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                    ),)
                                                ))):Container(),

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.6,
                                  height: MediaQuery.of(context).size.height*0.6,
                                  decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(20,20,20,20),
                                        decoration: BoxDecoration(
                                          color: Colors.white12,
                                          borderRadius: BorderRadius.all(Radius.circular(6)),
                                        ),
                                        width: MediaQuery.of(context).size.width*0.25,
                                        height:  MediaQuery.of(context).size.height*0.7,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                              width: MediaQuery.of(context).size.width*0.25,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Container(
                                                      width: 200,
                                                      height: 40,
                                                      child:
                                                      Text('Отдаёте',style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 24,
                                                      ),)
                                                  ),
                                                  Container(),
                                                ],
                                              ),
                                            ),

                                            Container(
                                              width: MediaQuery.of(context).size.width*0.25-20,
                                              height:  80,
                                              child: ListView.builder(

                                                  controller: _scrollController,
                                                  itemCount: i1,
                                                  itemBuilder: (_, index) {
                                                    if(index!=1&&index!=3&&index!=4&&index!=5&&index!=7&&index!=14)
                                                      return Container(
                                                          width: MediaQuery.of(context).size.width*0.25-60,
                                                          height: 30,
                                                          margin: EdgeInsets.only(top: 3),
                                                          decoration: BoxDecoration(
                                                            color: Colors.black45,
                                                            borderRadius: BorderRadius.all(Radius.circular(2)),
                                                          ),
                                                          child: TextButton(onPressed: (){
                                                            setState(() {
                                                              type1 = index;
                                                              c1=allcoins[type1].name;
                                                              if(type1 == 0)
                                                                typeforcourse1 = 1;
                                                              else
                                                              if(type1 == 1 || type1 == 2 || type1 == 3)
                                                                typeforcourse1 = 3;
                                                              else
                                                              if(type1 == 4)
                                                                typeforcourse1 = 6;
                                                              else
                                                              if(type1 == 5)
                                                                typeforcourse1 = 7;
                                                              else
                                                              if(type1 == 6)
                                                                typeforcourse1 = 8;
                                                              else
                                                              if(type1 == 7)
                                                                typeforcourse1 = 9;
                                                              else
                                                              if(type1 == 8)
                                                                typeforcourse1 = 10;
                                                              else
                                                              if(type1 == 9)
                                                                typeforcourse1 = 11;
                                                              else
                                                              if(type1 == 10)
                                                                typeforcourse1 = 12;
                                                              else
                                                              if(type1 == 11)
                                                                typeforcourse1 = 13;
                                                              else
                                                              if(type1 == 12)
                                                                typeforcourse1 = 14;
                                                              else
                                                              if(type1 == 13)
                                                                typeforcourse1 = 15;
                                                              else
                                                              if(type1 == 14)
                                                                typeforcourse1 = 16;
                                                              else
                                                              if(type1 == 15)
                                                                typeforcourse1 = 17;
                                                              else
                                                              if(type1 == 16)
                                                                typeforcourse1 = 18;
                                                            });
                                                          }, child:
                                                          Row(
                                                            children: [
                                                              Container(
                                                                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                                width: 30,
                                                                height: 30,
                                                                decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(allcoins[index].icon),
                                                                      fit: BoxFit.contain),
                                                                ),
                                                              ),
                                                              Container(child:
                                                              Text(allcoins[index].name, style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 14,

                                                              ),),),
                                                            ],
                                                          ),)
                                                      );
                                                    return Container();
                                                  }),
                                            ),

                                            Container(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.of(context).size.width*0.25-20,
                                                    height: 50,
                                                    // начало о
                                                    decoration: BoxDecoration(
                                                      color: Colors.black38,
                                                      borderRadius: BorderRadius.all(Radius.circular(2)),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Container(
                                                            width: 50,
                                                            child: Container(
                                                              width: 30,
                                                              height: 30,
                                                              child:
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    margin: EdgeInsets.fromLTRB(20, 2, 0, 2),
                                                                    width: 30,
                                                                    height: 30,
                                                                    decoration: BoxDecoration(
                                                                      image: DecorationImage(
                                                                          image: AssetImage(allcoins[type1].icon),
                                                                          fit: BoxFit.contain),
                                                                    ),
                                                                  ),

                                                                ],
                                                              ),
                                                            )),
                                                        Container(
                                                          margin: EdgeInsets.only(left: 10),
                                                          padding: EdgeInsets.only(bottom: 5),
                                                          width: MediaQuery.of(context).size.width*0.25-100,
                                                          height: 25,
                                                          child: TextField(
                                                            controller: _controller,
                                                            onChanged: (String value) {
                                                              setState(() {
                                                                svalue = value;
                                                                dvalue = double.parse(svalue);
                                                              });
                                                            },

                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors.white
                                                            ),
                                                            decoration: InputDecoration(
                                                              hintStyle: TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors.white
                                                              ),
                                                              hintText: '1',

                                                              border: UnderlineInputBorder(),
                                                              enabledBorder: UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: Colors.transparent,
                                                                  width: 0,
                                                                  style: BorderStyle.solid,
                                                                ),
                                                              ),
                                                              enabled: true,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(width: 20,
                                                          height: 1,)
                                                      ],
                                                    ),
                                                  ),


                                                ],
                                              ),
                                            ),
                                            Container(
                                              width:  MediaQuery.of(context).size.width*0.4,
                                              height: 80,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.of(context).size.width*0.25-20,
                                                    child: TextField(
                                                      controller: _controller1,
                                                      onChanged: (String value) {
                                                        setState(() {
                                                          email = value;
                                                        });
                                                      },
                                                      style: TextStyle(
                                                          color: Colors.white
                                                      ),
                                                      decoration: InputDecoration(
                                                        hintText: 'Email',
                                                        hintStyle: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white,
                                                        ),
                                                        prefixIcon: Padding(
                                                          padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                                          child: Icon(Icons.email_outlined, color: Colors.white,size: 20),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width:  MediaQuery.of(context).size.width*0.4,
                                              height: 80,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.of(context).size.width*0.25-20,
                                                    child: TextField(
                                                      controller: _controller2,
                                                      style: TextStyle(
                                                          color: Colors.white
                                                      ),
                                                      decoration: InputDecoration(
                                                        hintText: 'Кошелёк получателя',
                                                        hintStyle: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white,
                                                        ),
                                                        prefixIcon: Padding(
                                                          padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                                          child: Icon(Icons.monetization_on, color: Colors.white,size: 20),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),


                                      Container(
                                        margin: EdgeInsets.fromLTRB(20,20,20,20),
                                        decoration: BoxDecoration(
                                          color: Colors.white12,
                                          borderRadius: BorderRadius.all(Radius.circular(6)),
                                        ),
                                        width: MediaQuery.of(context).size.width*0.25,
                                        height:  MediaQuery.of(context).size.height*0.7,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                              width: MediaQuery.of(context).size.width*0.25,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Container(
                                                      width: 200,
                                                      height: 40,
                                                      child:
                                                      Text('Получаете',style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 24,
                                                      ),)
                                                  ),
                                                  Container(),
                                                ],
                                              ),
                                            ),

                                            Container(
                                              width: MediaQuery.of(context).size.width*0.25-20,
                                              height:  80,
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                borderRadius: BorderRadius.all(Radius.circular(2)),
                                              ),
                                              child: ListView.builder(
                                                  controller: _scrollController,
                                                  itemCount: i2,
                                                  itemBuilder: (_, index) {
                                                    if(index!=1&&index!=3&&index!=4&&index!=5&&index!=7&&index!=14)

                                                      return Container(
                                                          width: MediaQuery.of(context).size.width*0.25-60,
                                                          height: 30,
                                                          margin: EdgeInsets.only(top: 3),
                                                          decoration: BoxDecoration(
                                                            color: Colors.black45,
                                                            borderRadius: BorderRadius.all(Radius.circular(2)),
                                                          ),
                                                          child: TextButton(onPressed: (){
                                                            setState(() {
                                                              type2 = index;
                                                              c2=allcoins[type2].name;
                                                              if(type2 == 0)
                                                                typeforcourse2 = 1;
                                                              else
                                                              if(type2 == 1 || type2 == 2 || type2 == 3)
                                                                typeforcourse2 = 3;
                                                              else
                                                              if(type2 == 4)
                                                                typeforcourse2 = 6;
                                                              else
                                                              if(type2 == 5)
                                                                typeforcourse2 = 7;
                                                              else
                                                              if(type2 == 6)
                                                                typeforcourse2 = 8;
                                                              else
                                                              if(type2 == 7)
                                                                typeforcourse2 = 9;
                                                              else
                                                              if(type2 == 8)
                                                                typeforcourse2 = 10;
                                                              else
                                                              if(type2 == 9)
                                                                typeforcourse2 = 11;
                                                              else
                                                              if(type2 == 10)
                                                                typeforcourse2 = 12;
                                                              else
                                                              if(type2 == 11)
                                                                typeforcourse2 = 13;
                                                              else
                                                              if(type2 == 12)
                                                                typeforcourse2 = 14;
                                                              else
                                                              if(type2 == 13)
                                                                typeforcourse2 = 15;
                                                              else
                                                              if(type2 == 14)
                                                                typeforcourse2 = 16;
                                                              else
                                                              if(type2 == 15)
                                                                typeforcourse2 = 17;
                                                              else
                                                              if(type2 == 16)
                                                                typeforcourse2 = 18;
                                                            });
                                                          }, child:
                                                          Row(
                                                            children: [
                                                              Container(
                                                                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                                width: 30,
                                                                height: 30,
                                                                decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(allcoins[index].icon),
                                                                      fit: BoxFit.contain),
                                                                ),
                                                              ),
                                                              Container(child:
                                                              Text(allcoins[index].name, style: TextStyle(
                                                                  color: Colors.white
                                                              ),),),
                                                            ],
                                                          ),)
                                                      );
                                                    return Container();

                                                  }),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width*0.25-20,
                                              height: 50,
                                              // начало п
                                              decoration: BoxDecoration(
                                                color: Colors.black38,
                                                borderRadius: BorderRadius.all(Radius.circular(2)),
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                      width: 50,
                                                      child: Container(
                                                        width: 30,
                                                        height: 30,
                                                        child:
                                                        Row(
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets.fromLTRB(20, 2, 0, 2),
                                                              width: 30,
                                                              height: 30,
                                                              decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                    image: AssetImage(allcoins[type2].icon),
                                                                    fit: BoxFit.contain),
                                                              ),
                                                            ),

                                                          ],
                                                        ),
                                                      )),
                                                  Container(
                                                    height: 50,
                                                    margin: EdgeInsets.only(left: 10),
                                                    padding: EdgeInsets.only(bottom: 10),
                                                    width:  MediaQuery.of(context).size.width*0.25-80,
                                                    child: TextField(
                                                      style: TextStyle(
                                                          color: Colors.white
                                                      ),
                                                      decoration: InputDecoration(
                                                        hintStyle: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                        ),
                                                        hintText: ((dvalue*(Courses1[typeforcourse2]/Courses1[typeforcourse1])).toStringAsFixed(13)).toString(),
                                                        border: UnderlineInputBorder(),
                                                        disabledBorder: UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.transparent,
                                                            width: 0,
                                                            style: BorderStyle.solid,
                                                          ),
                                                        ),
                                                        enabled: false,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                                width:  MediaQuery.of(context).size.width*0.4,
                                                height: 80,
                                                child:
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    IconButton(onPressed: (){

                                                      if (check1)
                                                        setState(() {
                                                          check1=false;
                                                        });
                                                      else
                                                        setState(() {
                                                          check1=true;
                                                        });
                                                    }, icon: check1?Icon(Icons.check_box_outline_blank_sharp):Icon(Icons.check_box_outlined), color: Colors.white,),
                                                    TextButton(onPressed: (){
                                                      Navigator.pushNamed(context, '/8');
                                                    }, child:
                                                    Text('Я согласен с правилами обмена',
                                                      style:
                                                      TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white,
                                                      ),)),
                                                  ],
                                                )
                                            ),
                                            Container(
                                                width:  MediaQuery.of(context).size.width*0.2,
                                                height: 80,
                                                padding: EdgeInsets.all(10),
                                                color: Colors.transparent,
                                                child:
                                                Container(
                                                  width:  MediaQuery.of(context).size.width*0.2,
                                                  height: 60,
                                                  margin: EdgeInsets.only(top: 3),
                                                  decoration: BoxDecoration(
                                                    color: Color.fromRGBO(252, 156, 45, 1),
                                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey.withOpacity(0.2),
                                                        spreadRadius: 5,
                                                        blurRadius: 7,
                                                        offset: Offset(0, 3), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  child: TextButton(onPressed: () async{
                                                    if(check1==false&&email.contains('@')&&_controller2.text!='')
                                                    {
                                                      showDialog(context: context, builder: (BuildContext context){
                                                        return AlertDialog(
                                                          actionsPadding: EdgeInsets.all(0),
                                                          // title: Text('Add name/important/deadline'),
                                                          content:
                                                          Container(
                                                              height: 200,
                                                              width: 200,
                                                              color: Colors.white70,
                                                              child:
                                                              Column(
                                                                children: [
                                                                  Text('Создать заявку?')
                                                                ],
                                                              )),
                                                          actions: [
                                                            TextButton(onPressed: (){
                                                              _startBot();
                                                              dvalue1 = (dvalue*(Courses1[typeforcourse2]/Courses1[typeforcourse1]));
                                                              Navigator.pushNamed(context, '/9');
                                                            }, child: Text('Да', style: TextStyle(
                                                                color: Colors.black
                                                            ),))
                                                          ],
                                                        );
                                                      });
                                                    }
                                                    else
                                                    {
                                                      showDialog(context: context, builder: (BuildContext context){
                                                        return AlertDialog(
                                                          actionsPadding: EdgeInsets.all(0),
                                                          // title: Text('Add name/important/deadline'),
                                                          content:
                                                          Container(
                                                              height: 200,
                                                              width: 200,
                                                              color: Colors.white70,
                                                              child:
                                                              Column(
                                                                children: [
                                                                  Text('Заполните данные корректно!')
                                                                ],
                                                              )),
                                                          actions: [
                                                            TextButton(onPressed: (){
                                                              //   dvalue1 = (dvalue*(Courses1[typeforcourse2]/Courses1[typeforcourse1]));
                                                              Navigator.pushNamed(context, '/');
                                                            }, child: Text('Ок', style: TextStyle(
                                                                color: Colors.black
                                                            ),))
                                                          ],
                                                        );
                                                      });
                                                    }

                                                  }, child:
                                                  Center(child:Text('НАЧАТЬ ОБМЕН',style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white
                                                  ),),)),

                                                )),

                                          ],),
                                      ),],
                                  ),),
                              ],)
                          ]),
                      SizedBox(
                        width: 1,
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.95,
                        height: 30,
                        child: Text('© truexchange24. Работаем с 2020 года', style: TextStyle(
                          color: Colors.white54,
                        ),),
                      )
                    ])
            ))
    ):
    //начало телефона yfxfkj ntktajyf
    Scaffold(
        body:
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(8, 16, 28, 1.0),
                    Color.fromRGBO(6, 23, 45, 1.0),
                    Color.fromRGBO(8, 16, 28, 1.0),

                  ],
                )),
            child: Container(
                child:
                ListView.builder(

                    controller: _scrollController,
                    itemCount: 1,
                    itemBuilder: (_, index) { return
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width,
                              child: TextButton(onPressed: (){
                                showDialog(context: context, builder: (BuildContext context){
                                  return AlertDialog(
                                    backgroundColor: Colors.black87,
                                    actionsPadding: EdgeInsets.all(0),
                                    content:
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      height: MediaQuery.of(context).size.height*0.8,
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context).size.width*0.5,
                                            height: MediaQuery.of(context).size.height*0.1,
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage("assets/logo.png"),
                                                  fit: BoxFit.cover),
                                            ),),
                                          //qwe
                                          Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: MediaQuery.of(context).size.height*0.1,
                                              color: Colors.transparent,
                                              child: TextButton(onPressed: (){
                                                Navigator.pushNamed(context, '/');
                                              }, child:
                                              Row(children: [
                                                Icon(Icons.currency_exchange,color: Color.fromRGBO(246, 201, 67, 1.0),size: 18,),
                                                SizedBox(width: 10,),
                                                Text('Главная',style: TextStyle(
                                                  color: Color.fromRGBO(246, 201, 67, 1.0),
                                                  fontSize: 14,
                                                ),)
                                              ]))),
                                          Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: MediaQuery.of(context).size.height*0.1,
                                              child: TextButton(onPressed: (){
                                                Navigator.pushNamed(context, '/2');
                                              }, child:
                                              Row(children: [
                                                Icon(Icons.handshake_sharp,color: Colors.white,size: 18,),
                                                SizedBox(width: 10,),
                                                Text('Партнёрам',style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,

                                                ),)
                                              ]))),

                                          Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: MediaQuery.of(context).size.height*0.1,
                                              child: TextButton(onPressed: (){
                                                Navigator.pushNamed(context, '/6');
                                              }, child:
                                              Row(children: [
                                                Icon(Icons.support_agent,color: Colors.white,size: 18,),
                                                SizedBox(width: 10,),
                                                Text('Техподдержка',style: TextStyle(
                                                  //+(typeforcourse1).toString()+' '+(typeforcourse2).toString()
                                                  color: Colors.white,
                                                  fontSize: 14,

                                                ),)
                                              ]))),

                                          Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: MediaQuery.of(context).size.height*0.1,
                                              child: TextButton(onPressed: (){
                                                Navigator.pushNamed(context, '/1');
                                              }, child:
                                              Row(children: [
                                                Icon(Icons.stacked_bar_chart,color: Colors.white,size: 18,),
                                                SizedBox(width: 10,),
                                                Text('Тарифы',style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,

                                                ),)
                                              ]))),


                                          Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: MediaQuery.of(context).size.height*0.1,
                                              child: TextButton(onPressed: (){
                                                Navigator.pushNamed(context, '/3');

                                              }, child:
                                              Row(children: [
                                                Icon(Icons.currency_bitcoin,color: Colors.white,size: 18,),
                                                SizedBox(width: 10,),
                                                Text('Резервы',style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,

                                                ),)
                                              ]))),
                                          route=='/'?Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: MediaQuery.of(context).size.height*0.1,
                                              child: TextButton(onPressed: (){
                                                Navigator.pushNamed(context, '/4');
                                              }, child:
                                              Row(children: [
                                                Icon(Icons.exit_to_app,color: Colors.white,size: 18,),
                                                SizedBox(width: 10,),
                                                Text('Вход',style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,

                                                ),)
                                              ]))): Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: MediaQuery.of(context).size.height*0.1,
                                              child: TextButton(onPressed: (){
                                                showDialog(context: context, builder: (BuildContext context){
                                                  return AlertDialog(
                                                    actionsPadding: EdgeInsets.all(0),
                                                    // title: Text('Add name/important/deadline'),
                                                    content:
                                                    Container(
                                                        height: 200,
                                                        width: 200,
                                                        color: Colors.white70,
                                                        child:
                                                        Column(
                                                          children: [
                                                            Text('Хотите выйти?')
                                                          ],
                                                        )),
                                                    actions: [
                                                      TextButton(onPressed: (){
                                                        route='/';
                                                        Navigator.pushNamed(context, '/');
                                                      }, child: Text('Да', style: TextStyle(
                                                          color: Colors.black
                                                      ),))
                                                    ],
                                                  );
                                                }); }, child:
                                              Row(children: [
                                                Icon(Icons.exit_to_app,color: Colors.white,size: 18,),
                                                SizedBox(width: 10,),
                                                Text('Выход',style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,

                                                ),)
                                              ]))),
                                          route=='/'?Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: MediaQuery.of(context).size.height*0.1,
                                              child: TextButton(onPressed: (){
                                                Navigator.pushNamed(context, '/5');
                                              }, child:
                                              Row(children: [
                                                Icon(Icons.people_rounded,color: Colors.white,size: 18,),
                                                SizedBox(width: 10,),                                                          Text('Регистрация',style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,

                                                ),)
                                              ]))):Container(),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                              },
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        width: 1,
                                        height: 1,
                                      ),
                                      Icon(Icons.menu_outlined, color: Colors.white,),
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.8,
                                        height: 70,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/logo.png"),
                                              fit: BoxFit.fitWidth),
                                        ),),
                                    ]),
                              )),
                          Container(
                            margin: EdgeInsets.fromLTRB(20,10,0,20),

                            width: MediaQuery.of(context).size.width*0.9,
                            child: Text('МУЛЬТИВАЛЮТНЫЙ ОБМЕННЫЙ СЕРВИС',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          Container(
                            // height: 1000,

                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white12,
                                    borderRadius: BorderRadius.all(Radius.circular(6)),
                                  ),
                                  width: MediaQuery.of(context).size.width*0.8,
                                  height: 250,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.8,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                                margin: EdgeInsets.only(top: 10),
                                                width: 200,
                                                height: 40,
                                                child:
                                                Text('Отдаёте',style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                ),)
                                            ),
                                            Container(),

                                          ],
                                        ),
                                      ),

                                      Container(
                                        width: MediaQuery.of(context).size.width*0.8,
                                        height: 190,
                                        child: ListView.builder(
                                            controller: _scrollController,
                                            itemCount: i1,
                                            itemBuilder: (_, index) {
                                              if(index!=1&&index!=3&&index!=4&&index!=5&&index!=7&&index!=14)
                                                return Container(
                                                    width: MediaQuery.of(context).size.width*0.5,
                                                    height: 30,
                                                    margin: EdgeInsets.only(top: 3),
                                                    decoration: BoxDecoration(
                                                      color: Colors.black45,
                                                      borderRadius: BorderRadius.all(Radius.circular(2)),
                                                    ),
                                                    child: TextButton(onPressed: (){
                                                      setState(() {
                                                        type1 = index;
                                                        c1=allcoins[type1].name;
                                                        if(type1 == 0)
                                                          typeforcourse1 = 1;
                                                        else
                                                        if(type1 == 1 || type1 == 2 || type1 == 3)
                                                          typeforcourse1 = 3;
                                                        else
                                                        if(type1 == 4)
                                                          typeforcourse1 = 6;
                                                        else
                                                        if(type1 == 5)
                                                          typeforcourse1 = 7;
                                                        else
                                                        if(type1 == 6)
                                                          typeforcourse1 = 8;
                                                        else
                                                        if(type1 == 7)
                                                          typeforcourse1 = 9;
                                                        else
                                                        if(type1 == 8)
                                                          typeforcourse1 = 10;
                                                        else
                                                        if(type1 == 9)
                                                          typeforcourse1 = 11;
                                                        else
                                                        if(type1 == 10)
                                                          typeforcourse1 = 12;
                                                        else
                                                        if(type1 == 11)
                                                          typeforcourse1 = 13;
                                                        else
                                                        if(type1 == 12)
                                                          typeforcourse1 = 14;
                                                        else
                                                        if(type1 == 13)
                                                          typeforcourse1 = 15;
                                                        else
                                                        if(type1 == 14)
                                                          typeforcourse1 = 16;
                                                        else
                                                        if(type1 == 15)
                                                          typeforcourse1 = 17;
                                                        else
                                                        if(type1 == 16)
                                                          typeforcourse1 = 18;
                                                      });
                                                    }, child:
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                          width: 30,
                                                          height: 30,
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(allcoins[index].icon),
                                                                fit: BoxFit.contain),
                                                          ),
                                                        ),
                                                        Container(child:
                                                        Text(allcoins[index].name, style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                        ),),),
                                                      ],
                                                    ),)
                                                );
                                              return Container();
                                            }),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.fromLTRB(20, 40, 20, 40),
                                  decoration: BoxDecoration(
                                    color: Colors.white12,
                                    borderRadius: BorderRadius.all(Radius.circular(6)),
                                  ),
                                  width: MediaQuery.of(context).size.width*0.8,
                                  height: 250,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.8,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                                margin: EdgeInsets.only(top: 10),
                                                width: 200,
                                                height: 40,
                                                child:
                                                Text('Получаете',style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                ),)
                                            ),
                                            Container(),


                                          ],
                                        ),
                                      ),

                                      Container(

                                        width: MediaQuery.of(context).size.width*0.8,
                                        height: 190,
                                        child: ListView.builder(
                                            controller: _scrollController,
                                            itemCount: i2,
                                            itemBuilder: (_, index) {
                                              if(index!=1&&index!=3&&index!=4&&index!=5&&index!=7&&index!=14)
                                                return Container(
                                                    width: MediaQuery.of(context).size.width*0.8,
                                                    height: 30,
                                                    margin: EdgeInsets.only(top: 3),
                                                    decoration: BoxDecoration(
                                                      color: Colors.black45,
                                                      borderRadius: BorderRadius.all(Radius.circular(2)),
                                                    ),
                                                    child: TextButton(onPressed: (){
                                                      setState(() {
                                                        type2 = index;
                                                        c2=allcoins[type2].name;
                                                        if(type2 == 0)
                                                          typeforcourse2 = 1;
                                                        else
                                                        if(type2 == 1 || type2 == 2 || type2 == 3)
                                                          typeforcourse2 = 3;
                                                        else
                                                        if(type2 == 4)
                                                          typeforcourse2 = 6;
                                                        else
                                                        if(type2 == 5)
                                                          typeforcourse2 = 7;
                                                        else
                                                        if(type2 == 6)
                                                          typeforcourse2 = 8;
                                                        else
                                                        if(type2 == 7)
                                                          typeforcourse2 = 9;
                                                        else
                                                        if(type2 == 8)
                                                          typeforcourse2 = 10;
                                                        else
                                                        if(type2 == 9)
                                                          typeforcourse2 = 11;
                                                        else
                                                        if(type2 == 10)
                                                          typeforcourse2 = 12;
                                                        else
                                                        if(type2 == 11)
                                                          typeforcourse2 = 13;
                                                        else
                                                        if(type2 == 12)
                                                          typeforcourse2 = 14;
                                                        else
                                                        if(type2 == 13)
                                                          typeforcourse2 = 15;
                                                        else
                                                        if(type2 == 14)
                                                          typeforcourse2 = 16;
                                                        else
                                                        if(type2 == 15)
                                                          typeforcourse2 = 17;
                                                        else
                                                        if(type2 == 16)
                                                          typeforcourse2 = 18;
                                                      });
                                                    }, child:
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                          width: 30,
                                                          height: 30,
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(allcoins[index].icon),
                                                                fit: BoxFit.contain),
                                                          ),
                                                        ),
                                                        Container(child:
                                                        Text(allcoins[index].name, style: TextStyle(
                                                            color: Colors.white
                                                        ),),),
                                                      ],
                                                    ),)
                                                );
                                              return Container();
                                            }),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white12,
                                    borderRadius: BorderRadius.all(Radius.circular(6)),
                                  ),
                                  width: MediaQuery.of(context).size.width*0.8,
                                  height: 500,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 50, 0, 30),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(

                                              width: MediaQuery.of(context).size.width*0.78,
                                              height: 30,
                                              margin: EdgeInsets.only(bottom: 10),
                                              decoration: BoxDecoration(
                                                color: Colors.black45,
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                      width: 50,
                                                      child:
                                                      ListView.builder(
                                                          controller: _scrollController,
                                                          itemCount: 1,
                                                          itemBuilder: (_, index) {
                                                            return Container(
                                                              width: 40,
                                                              height: 30,
                                                              child:
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                                    width: 30,
                                                                    height: 30,
                                                                    decoration: BoxDecoration(
                                                                      image: DecorationImage(
                                                                          image: AssetImage(allcoins[type1].icon),
                                                                          fit: BoxFit.contain),
                                                                    ),
                                                                  ),

                                                                ],
                                                              ),
                                                            );
                                                          }
                                                      )),
                                                  Container(
                                                    padding: EdgeInsets.only(bottom: 4),
                                                    width: MediaQuery.of(context).size.width*0.78-60,
                                                    height: 40,
                                                    child: TextField(
                                                      controller: _controller,
                                                      onChanged: (String value) {
                                                        setState(() {
                                                          svalue = value;
                                                          dvalue = double.parse(svalue);
                                                        });
                                                      },

                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white
                                                      ),
                                                      decoration: InputDecoration(
                                                        hintText: '1',
                                                        hintStyle: TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.white
                                                        ),
                                                        border: UnderlineInputBorder(),
                                                        enabledBorder: UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.transparent,
                                                            width: 0,
                                                            style: BorderStyle.solid,
                                                          ),
                                                        ),
                                                        enabled: true,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),

                                            Container(
                                              width: MediaQuery.of(context).size.width*0.78,
                                              height: 30,
                                              // padding: EdgeInsets.only(bottom: 4),
                                              decoration: BoxDecoration(
                                                color: Colors.black45,
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                      width: 50,
                                                      child:
                                                      ListView.builder(
                                                          controller: _scrollController,
                                                          itemCount: 1,
                                                          itemBuilder: (_, index) {
                                                            if (v2 == 0)
                                                              return Container(
                                                                width: 40,
                                                                height: 30,
                                                                child:
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                                      width: 30,
                                                                      height: 30,
                                                                      decoration: BoxDecoration(
                                                                        image: DecorationImage(
                                                                            image: AssetImage(allcoins[type2].icon),
                                                                            fit: BoxFit.contain),
                                                                      ),
                                                                    ),

                                                                  ],
                                                                ),
                                                              );
                                                            if (v2 == 1)
                                                              return Container(
                                                                width: 40,
                                                                height: 30,
                                                                child:
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                                      width: 30,
                                                                      height: 30,
                                                                      decoration: BoxDecoration(
                                                                        image: DecorationImage(
                                                                            image: AssetImage(allbanks[type2].icon),
                                                                            fit: BoxFit.contain),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            if (v2 == 2)
                                                              return Container(
                                                                width: 40,
                                                                height: 30,
                                                                child:
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                                      width: 30,
                                                                      height: 30,
                                                                      decoration: BoxDecoration(
                                                                        image: DecorationImage(
                                                                            image: AssetImage(allps[type2].icon),
                                                                            fit: BoxFit.contain),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            return Container();
                                                          }
                                                      )),
                                                  Container(
                                                    padding: EdgeInsets.only(bottom: 4),
                                                    width:  MediaQuery.of(context).size.width*0.78-60,
                                                    height: 150,
                                                    child: TextField(
                                                      style: TextStyle(
                                                          color: Colors.white
                                                      ),
                                                      decoration: InputDecoration(
                                                        hintStyle: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                        ),
                                                        hintText: ((dvalue*(Courses1[typeforcourse2]/Courses1[typeforcourse1])).toStringAsFixed(13)).toString(),
                                                        border: UnderlineInputBorder(),
                                                        disabledBorder: UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.transparent,
                                                            width: 0,
                                                            style: BorderStyle.solid,
                                                          ),
                                                        ),
                                                        enabled: false,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        width:  MediaQuery.of(context).size.width*0.8,
                                        height: 80,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [

                                            Container(
                                              width:  MediaQuery.of(context).size.width*0.38,
                                              child: TextField(
                                                controller: _controller1,
                                                onChanged: (String value) {
                                                  setState(() {
                                                    email = value;
                                                  });
                                                },
                                                style: TextStyle(
                                                    color: Colors.white
                                                ),

                                                decoration: InputDecoration(
                                                  hintText: 'Email',
                                                  hintStyle: TextStyle(
                                                    fontSize: 8,
                                                    color: Colors.white,
                                                  ),
                                                  prefixIcon: Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                                    child: Icon(Icons.email_outlined, color: Colors.white,size: 20),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:  MediaQuery.of(context).size.width*0.8,
                                        height: 80,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [

                                            Container(
                                              width:  MediaQuery.of(context).size.width*0.38,
                                              child: TextField(
                                                controller: _controller2,
                                                style: TextStyle(
                                                    color: Colors.white
                                                ),
                                                decoration: InputDecoration(
                                                  hintText: 'Номер вашего кошелька',
                                                  hintStyle: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white,
                                                  ),
                                                  prefixIcon: Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                                    child: Icon(Icons.monetization_on, color: Colors.white,size: 20),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                          width:  MediaQuery.of(context).size.width*0.8,
                                          child:
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              IconButton(onPressed: (){

                                                if (check1)
                                                  setState(() {
                                                    check1=false;
                                                  });
                                                else
                                                  setState(() {
                                                    check1=true;
                                                  });
                                              }, icon: check1?Icon(Icons.check_box_outline_blank_sharp):Icon(Icons.check_box_outlined), color: Colors.white,),
                                              TextButton(onPressed: (){
                                                Navigator.pushNamed(context, '/8');
                                              }, child:
                                              Text('Я согласен с правилами обмена',
                                                style:
                                                TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),)),
                                            ],
                                          )
                                      ),
                                      Container(
                                        width:  MediaQuery.of(context).size.width*0.6,
                                        height: 60,
                                        margin: EdgeInsets.only(top: 3),
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(252, 156, 45, 1),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.2),
                                              spreadRadius: 5,
                                              blurRadius: 7,
                                              offset: Offset(0, 3), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: TextButton(onPressed: (){



                                          if(check1==false&&email.contains('@')&&_controller2.text!='')
                                          {
                                            showDialog(context: context, builder: (BuildContext context){
                                              return AlertDialog(
                                                actionsPadding: EdgeInsets.all(0),
                                                // title: Text('Add name/important/deadline'),
                                                content:
                                                Container(
                                                    height: 200,
                                                    width: 200,
                                                    color: Colors.white70,
                                                    child:
                                                    Column(
                                                      children: [
                                                        Text('Создать заявку?')
                                                      ],
                                                    )),
                                                actions: [
                                                  TextButton(onPressed: (){
                                                    _startBot();
                                                    dvalue1 = (dvalue*(Courses1[typeforcourse2]/Courses1[typeforcourse1]));
                                                    Navigator.pushNamed(context, '/9');
                                                  }, child: Text('Да', style: TextStyle(
                                                      color: Colors.black
                                                  ),))
                                                ],
                                              );
                                            });
                                          }
                                          else
                                          {
                                            showDialog(context: context, builder: (BuildContext context){
                                              return AlertDialog(
                                                actionsPadding: EdgeInsets.all(0),
                                                // title: Text('Add name/important/deadline'),
                                                content:
                                                Container(
                                                    height: 200,
                                                    width: 200,
                                                    color: Colors.white70,
                                                    child:
                                                    Column(
                                                      children: [
                                                        Text('Заполните данные корректно!')
                                                      ],
                                                    )),
                                                actions: [
                                                  TextButton(onPressed: (){
                                                    //   dvalue1 = (dvalue*(Courses1[typeforcourse2]/Courses1[typeforcourse1]));
                                                    Navigator.pushNamed(context, '/');
                                                  }, child: Text('Ок', style: TextStyle(
                                                      color: Colors.black
                                                  ),))
                                                ],
                                              );
                                            });
                                          }
                                        },
                                            child:
                                            Center(child:Text('НАЧАТЬ ОБМЕН',style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white
                                            ),),)),

                                      )
                                    ],
                                  ),
                                ),



                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            width: MediaQuery.of(context).size.width*0.95,
                            height: 30,
                            child: Text('© truexchange24. Работаем с 2020 года', style: TextStyle(
                              color: Colors.white54,
                            ),),
                          ),
                        ],
                      );}
                )
            )
        ));
  }
  _startBot() async{
    final username = (await telegram.getMe()).username;
    teleDart = TeleDart('5613252740:AAGdnSygaZ3AI1QiIg-jC_yGicn8r9qhrNI', Event(username!));
    teleDart.start();
    teleDart.sendMessage(msgId, ' валюта : '+c1+'\n сумма : '+svalue+'\n email: '+email);
    teleDart.stop();
  }
  void into() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }
}