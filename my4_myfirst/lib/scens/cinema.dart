
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my4/main.dart';
import 'package:flutter/material.dart';
import 'package:my4/classes/CardsClass.dart';
import 'MainMenu.dart';
import 'DrawerMenu.dart';
import 'drawemenu2.dart';
import 'test2.dart';
int n = 0;
String CinemaName = '';
String CinemaAdres = '';
final allcinemas = <AllCinemas>[
  AllCinemas(
     workt: '',
      adress: '',
      name: '',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: '',
      telephone: 'Номер телефона +380123123', worktime: [' '],
      menu: [],
      cost: [])
];

late final ViewportBuilder viewportBuilder;
ScrollController _scrollController = new ScrollController();
TextEditingController searchController = new TextEditingController();

class CinemaScreen extends StatefulWidget {
  const CinemaScreen({Key? key}) : super(key: key);

  @override
  State<CinemaScreen> createState() => _CinemaScreenState();
}

class _CinemaScreenState extends State<CinemaScreen> {
  List todoL = [];
  String _ust = "qqqqq";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // initFirebase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          drawer: MainDrawer(),
      //  drawer: CircleMenu1(),
      //BottomSheetThemeData(backgroundColor: Colors.black54),


      backgroundColor:Colors.transparent,


      body: Container(
        width: MediaQuery.of(context).size.width,

        decoration: const BoxDecoration(
          color: Colors.transparent,
         //   image: DecorationImage(
         //  image: AssetImage("assets/ground.webp"),
          // fit: BoxFit.cover),
           ),
            child:ListView.builder(
            controller: _scrollController,
            itemCount: 1,
            itemBuilder: (_, index)
            {
              return Column(
                children: [


                  Thiscard(),
                ],
              );
            }
        ),
      ),

    );
  }
}


class Thiscard extends StatelessWidget {
  // const MenuList({Key? key}) : super(key: key);


  final allmenu = <Menu>[
    Menu(menu: [' классика', ' двойное мясо ', ' мини ',' классика', ' двойное мясо '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
  ];


  @override
  Widget build(BuildContext context) {

    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('CinemaList').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot)
        {
          if(!snapshot.hasData) return Text('noData');
          return Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 3,
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.8,
                child: ListView.builder(
                    itemCount: snapshot.data?.docs.length,
                    itemBuilder: (context, i)
                    {
                      if (searchController.text==snapshot.data?.docs[i].get('CinemaName'))
                            return Container(
                              padding: EdgeInsets.only(bottom: 3),
                              margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
                              height: MediaQuery.of(context).size.height*0.2,
                              width: MediaQuery.of(context).size.width*0.8,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/hookah.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(Radius.circular(25))
                              ),
                              child:
                              ElevatedButton(
                                  style:  ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      shadowColor: Colors.transparent
                                  ),
                                  onPressed: (){
                                    allcinemas[0].name=snapshot.data?.docs[i].get('CinemaName');
                                    //  allcinemas[0].coordinatey=snapshot.data?.docs[i].get('Coordy');
                                    allcinemas[0].adress = snapshot.data?.docs[i].get('CinemaAdress');
                                    allcinemas[0].site = snapshot.data?.docs[i].get('CinemaSite');

                                    // allcinemas[0].worktime = snapshot.data?.docs[i].get('CinemaWorkTime');
                                    allcinemas[0].telephone = snapshot.data?.docs[i].get('CinemaTel');
                                    // for(int j=0;j<3;j++)
                                    //  {
                                    //          allcinemas[0].menu[j]=(snapshot.data?.docs[i].get('Menu'))[j];
                                    allcinemas[0].img=snapshot.data?.docs[i].get('Cost');
                                    allcinemas[0].cost = (allcinemas[0].img).split(' ');
                                    allcinemas[0].worktime = snapshot.data?.docs[i].get('CinemaWorkTime');

                                    allcinemas[0].img=snapshot.data?.docs[i].get('Menu');
                                    allcinemas[0].menu = (allcinemas[0].img).split(' ');
                                    //   }
                                    allcinemas[0].img = snapshot.data?.docs[i].get('CinemaImg');
                                    // allcinemas[0].menu = snapshot.data?.docs[i].get('Menu');
                                    // allmenu[0].menu=snapshot.data?.docs[i].get('Menu');
                                    //  allmenu[0].cost=snapshot.data?.docs[i].get('Cost');
                                    CinemaName = snapshot.data?.docs[i].get('CinemaName');
                                    CinemaAdres = allcinemas[0].adress;
                                    n=i;
                                    Navigator.pushNamed(context, '/todo17');
                                  },
                                  child:
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        color: Colors.black,
                                        height: 65,
                                        child:  Row(
                                          children: [
                                            Icon(Icons.local_cafe, color: Colors.white,),
                                            Padding(padding: EdgeInsets.only(right: 20)),
                                            Column(
                                              children: [
                                                Container(
                                                  width: 225,
                                                  child: Text(snapshot.data?.docs[i].get('CinemaName'), style: TextStyle(
                                                    fontFamily: 'CormorantGaramond',
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  ),
                                                ),

                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: [
                                                    Container(
                                                      width: 225,
                                                      height: 45,
                                                      child:
                                                      Text(snapshot.data?.docs[i].get('CinemaDiscription'), softWrap: true, style: TextStyle(
                                                        fontFamily: 'CormorantGaramond',
                                                        fontSize: 12,
                                                        color: Colors.white,
                                                      ),
                                                      ),
                                                    ),

                                                  ],
                                                )
                                                //     LEFTSIDE
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            );
                      if (searchController.text=='')
                        return Container(
                          padding: EdgeInsets.only(bottom: 3),
                        margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
                        height: MediaQuery.of(context).size.height*0.2,
                        width: MediaQuery.of(context).size.width*0.8,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/hookah.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                        child:
                              ElevatedButton(
                                style:  ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent
                                ),
                                onPressed: (){
                                  allcinemas[0].name=snapshot.data?.docs[i].get('CinemaName');
                                  //  allcinemas[0].coordinatey=snapshot.data?.docs[i].get('Coordy');
                                  allcinemas[0].adress = snapshot.data?.docs[i].get('CinemaAdress');
                                  allcinemas[0].site = snapshot.data?.docs[i].get('CinemaSite');

                                  // allcinemas[0].worktime = snapshot.data?.docs[i].get('CinemaWorkTime');
                                  allcinemas[0].telephone = snapshot.data?.docs[i].get('CinemaTel');
                                  // for(int j=0;j<3;j++)
                                  //  {
                                  //          allcinemas[0].menu[j]=(snapshot.data?.docs[i].get('Menu'))[j];
                                  allcinemas[0].img=snapshot.data?.docs[i].get('Cost');
                                  allcinemas[0].cost = (allcinemas[0].img).split(' ');
                                  allcinemas[0].workt=snapshot.data?.docs[i].get('workt');


                                  allcinemas[0].img=snapshot.data?.docs[i].get('Menu');
                                  allcinemas[0].menu = (allcinemas[0].img).split(' ');
                                  //   }
                                  allcinemas[0].img = snapshot.data?.docs[i].get('CinemaImg');
                                  // allcinemas[0].menu = snapshot.data?.docs[i].get('Menu');
                                  // allmenu[0].menu=snapshot.data?.docs[i].get('Menu');
                                  //  allmenu[0].cost=snapshot.data?.docs[i].get('Cost');
                                  CinemaName = snapshot.data?.docs[i].get('CinemaName');
                                  CinemaAdres = allcinemas[0].adress;
                                  n=i;
                                  Navigator.pushNamed(context, '/todo17');
                                },
                                child:
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          color: Colors.black,
                                          height: 65,
                                          child:  Row(
                                            children: [
                                              Icon(Icons.local_cafe, color: Colors.white,),
                                              Padding(padding: EdgeInsets.only(right: 20)),
                                              Column(
                                                children: [
                                                  Container(
                                                    width: 225,
                                                    child: Text(snapshot.data?.docs[i].get('CinemaName'), style: TextStyle(
                                                      fontFamily: 'CormorantGaramond',
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                    ),
                                                  ),

                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: [
                                                      Container(
                                                        width: 225,
                                                        height: 45,
                                                        child:
                                                        Text(snapshot.data?.docs[i].get('CinemaDiscription'), softWrap: true, style: TextStyle(
                                                          fontFamily: 'CormorantGaramond',
                                                          fontSize: 12,
                                                          color: Colors.white,
                                                        ),
                                                        ),
                                                      ),

                                                    ],
                                                  )
                                                  //     LEFTSIDE
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                              ),
                      );
                      return Container(
                        width: 10,
                        height: 5,
                      );
                    }),
              ),
            ],
          );
        }
    );
  }
}

class LEFTSIDE {
}

class LEFT {
}


