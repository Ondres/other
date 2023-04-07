import 'dart:ui';

import 'package:cryptochange/classes/classes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'firstpage.dart';
import 'курсы.dart';
import 'dart:math';

import 'main.dart';


class Obmen extends StatefulWidget {
  const Obmen({Key? key}) : super(key: key);

  @override
  State<Obmen> createState() => _ObmenState();
}

class _ObmenState extends State<Obmen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = new ScrollController();
    return Scaffold(
        body: Container(
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

            child:
            MediaQuery.of(context).size.width<=1000?
            Container(
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Container(
        //  margin: EdgeInsets.fromLTRB(0,40,0,0),

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
                            Icon(Icons.currency_exchange,color: Colors.white,size: 18,),
                            SizedBox(width: 10,),
                            Text('Главная',style: TextStyle(
                              color: Colors.white,
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
                            SizedBox(width: 10,),
                            Text('Регистрация',style: TextStyle(
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
                    //      margin: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width<=1000?MediaQuery.of(context).size.width*0.9
                            :MediaQuery.of(context).size.width*0.8,
                        height:30,
                        child:  Text('Ваша заявка №109 032 Е0', style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          //    fontWeight: FontWeight.bold
                        ),),
                      ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),                    width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.8
                        :MediaQuery.of(context).size.width-10,
                    height: MediaQuery.of(context).size.height*0.6,
                    child:
                    ListView.builder(
                    controller: _scrollController,
                    itemCount: 1,
                    itemBuilder: (_, index) {
                      return
                      Container(
                          padding: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width*0.8,
                          height: MediaQuery.of(context).size.height*0.7,
                          child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                        //  height:30,
                         child:
                          Text('Ожидайте, реквизиты придут на указанную Вами почту',style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                        ),
                    ),),
                        Container(
                          color: Colors.white12,
                          width: MediaQuery.of(context).size.width*0.8,
                          height:MediaQuery.of(context).size.height*0.1,
                          child:
                          TextButton(onPressed: (){
                            Fluttertoast.showToast(
                                msg: "Ожидайте пополнение вашего баланса после проверки",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 3,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                            Navigator.pushNamed(context, '/');
                          }, child:
                          Text('Я оплатил',style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),),
                          ),),
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          height:50,
                            child:
                            //v1==0?
                          Text('Вы отдаете :\n $svalue $c1',style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),),
                          ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                           height:50,
                          child:
                          Text('Вы получаете :\n $dvalue1 $c2',style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),),
                          ),
                      ],
                    ));
                    }),
                  ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.95,
                        height: 30,
                        child: Text('© truexchange24. Работаем с 2020 года', style: TextStyle(
                          color: Colors.white54,
                        ),),
                      ),
                ])
        ):
         //начало компа
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
                                            Icon(Icons.currency_exchange,color: Colors.white,size: 18,),
                                            SizedBox(width: 10,),
                                            Text('Главная',style: TextStyle(
                                              color: Colors.white,
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
                                              margin: EdgeInsets.only(top: 40),
                                              width: 300,
                                              height:45,
                                              child:  Text('Ваша заявка №109 032 Е0', style: TextStyle(
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
                        margin: EdgeInsets.only(top: 20),
                        color: Colors.black45,
                        width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.6
                            :MediaQuery.of(context).size.width-10,
                        height: MediaQuery.of(context).size.height*0.6,
                        child:
                        ListView.builder(
                            controller: _scrollController,
                            itemCount: 1,
                            itemBuilder: (_, index) {
                              return
                                Container(
                                    padding: EdgeInsets.all(20),
                                    width: MediaQuery.of(context).size.width*0.8,
                                    height: MediaQuery.of(context).size.height*0.7,
                                    child:
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width*0.8,
                                          //  height:30,
                                          child:
                                          Text('Ожидайте, реквизиты придут на указанную Вами почту',style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                          ),),
                                        Container(
                                          color: Colors.white12,
                                          width: MediaQuery.of(context).size.width*0.8,
                                          height:MediaQuery.of(context).size.height*0.1,
                                          child:
                                          TextButton(onPressed: (){
                                            Fluttertoast.showToast(
                                                msg: "Ожидайте пополнение вашего баланса после проверки",
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.CENTER,
                                                timeInSecForIosWeb: 3,
                                                backgroundColor: Colors.red,
                                                textColor: Colors.white,
                                                fontSize: 16.0);
                                            Navigator.pushNamed(context, '/');
                                          }, child:
                                          Text('Я оплатил',style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),),
                                          ),),
                                        Container(
                                          width: MediaQuery.of(context).size.width*0.8,
                                          height:50,
                                          child:
                                          //v1==0?
                                          Text('Вы отдаете :\n $svalue $c1',style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width*0.8,
                                          height:50,
                                          child:
                                          Text('Вы получаете :\n $dvalue1 $c2',style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),),
                                        ),
                                      ],
                                    ));
                            }),
                      ),
                    ])
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
                          ),
     ])
    )))

    );
  }
}