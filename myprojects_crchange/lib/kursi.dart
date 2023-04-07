import 'dart:ui';

import 'package:cryptochange/classes/classes.dart';
import 'package:flutter/material.dart';
import 'курсы.dart';
import 'dart:math';

import 'main.dart';

int vp=0;

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
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
        body:  MediaQuery.of(context).size.width<=1000?Container(
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
                            Icon(Icons.stacked_bar_chart,color: Color.fromRGBO(246, 201, 67, 1.0),size: 18,),
                            SizedBox(width: 10,),
                            Text('Тарифы',style: TextStyle(
                              color: Color.fromRGBO(246, 201, 67, 1.0),
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
                  width: MediaQuery.of(context).size.width<=1000?MediaQuery.of(context).size.width*0.9
                      :MediaQuery.of(context).size.width*0.8,
                  child: Text('Актуальные курсы валют',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  padding: EdgeInsets.fromLTRB(1, 1, 1, 2),
                  //qwe
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.black45,
                  ),
                  width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.8
                      :MediaQuery.of(context).size.width-10,
                  height: MediaQuery.of(context).size.height*0.6,
                  child: ListView.builder(
                controller: _scrollController,
                itemCount: 17,
                itemBuilder: (_, index) {

                    if(index == 0)
                    vp = 1;
                  else
                  if(index == 1 || index == 2 || index == 3)
                    vp = 3;
                  else
                  if(index == 4)
                    vp = 6;
                  else
                  if(index == 5)
                    vp = 7;
                  else
                  if(index == 6)
                    vp = 8;
                  else
                  if(index == 7)
                    vp = 9;
                  else
                  if(index == 8)
                    vp = 10;
                  else
                  if(index == 9)
                    vp = 11;
                  else
                  if(index == 10)
                    vp = 12;
                  else
                  if(index == 11)
                    vp = 13;
                  else
                  if(index == 12)
                    vp = 14;
                  else
                  if(index == 13)
                    vp = 15;
                  else
                  if(index == 14)
                    vp = 16;
                  else
                  if(index == 15)
                    vp = 17;
                  else
                  if(index == 16)
                    vp = 18;
                  if(index == 17)
                    vp = 19;
                  if(index == 18)
                    vp = 20;
                  if(index == 19)
                    vp = 21;
                  if(vp!=19&&vp!=20&&index!=1&&index!=3&&index!=4&&index!=5&&index!=7&&index!=14)
                  return Container(
                    margin: EdgeInsets.fromLTRB(3,3,3,0),
                    width:  MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.6
                    :MediaQuery.of(context).size.width*0.8,
                    height: 40,
                    color: Colors.white10,
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
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
                          fontSize: 12,
                        ),),),
                            ],
                          ),
                         ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child:
                        Text((1/Courses1[vp]).toString()+" USD", style: TextStyle(
                            color: Colors.white,
                          fontSize: 12,

                        ),),),
                      ],
                    ),
                  );
                 return Container();
                }
                ),),
                      Container(
                        width: MediaQuery.of(context).size.width*0.95,
                        height: 30,
                        child: Text('© truexchange24. Работаем с 2020 года', style: TextStyle(
                          color: Colors.white54,
                        ),),
                      ),
      ])
     )
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
                                  Icon(Icons.support_agent,color: Colors.white,size: 18,),
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
                                  Icon(Icons.stacked_bar_chart,color: Color.fromRGBO(246, 201, 67, 1.0),size: 18,),
                                  SizedBox(width: 10,),

                                  Text('Тарифы',style: TextStyle(
                                    color: Color.fromRGBO(246, 201, 67, 1.0),
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
                                  child:  Text('Актуальные курсы валют', style: TextStyle(
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
                        padding: EdgeInsets.fromLTRB(1, 1, 1, 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.black45,
                        ),
                        width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.6
                            :MediaQuery.of(context).size.width-10,
                        height: MediaQuery.of(context).size.height*0.6,
                        child: ListView.builder(
                            controller: _scrollController,
                            itemCount: 17,
                            itemBuilder: (_, index) {

                              if(index == 0)
                                vp = 1;
                              else
                              if(index == 1 || index == 2 || index == 3)
                                vp = 3;
                              else
                              if(index == 4)
                                vp = 6;
                              else
                              if(index == 5)
                                vp = 7;
                              else
                              if(index == 6)
                                vp = 8;
                              else
                              if(index == 7)
                                vp = 9;
                              else
                              if(index == 8)
                                vp = 10;
                              else
                              if(index == 9)
                                vp = 11;
                              else
                              if(index == 10)
                                vp = 12;
                              else
                              if(index == 11)
                                vp = 13;
                              else
                              if(index == 12)
                                vp = 14;
                              else
                              if(index == 13)
                                vp = 15;
                              else
                              if(index == 14)
                                vp = 16;
                              else
                              if(index == 15)
                                vp = 17;
                              else
                              if(index == 16)
                                vp = 18;
                              if(index == 17)
                                vp = 19;
                              if(index == 18)
                                vp = 20;
                              if(index == 19)
                                vp = 21;
                              if(vp!=19&&vp!=20&&index!=1&&index!=3&&index!=4&&index!=5&&index!=7&&index!=14)
                                return Container(
                                  margin: EdgeInsets.fromLTRB(3,3,3,0),
                                  width:  MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.6
                                      :MediaQuery.of(context).size.width*0.8,
                                  height: 40,
                                  color: Colors.white10,
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
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
                                              fontSize: 12,
                                            ),),),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 20),
                                        child:
                                        Text((1/Courses1[vp]).toString()+" USD", style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,

                                        ),),),
                                    ],
                                  ),
                                );
                              return Container();
                            }
                        ),)
                        ],
                      ),
                    ]),
                    SizedBox(
                      width: 1,
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.95,
                      height: 30,
                      child:  Text('© truexchange24. Работаем с 2020 года', style: TextStyle(
                        color: Colors.white54,
                      ),),
                    )
            ])
        )
    ));
  }
}