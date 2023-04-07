import 'package:my4/main.dart';
import 'package:flutter/material.dart';
import 'package:my4/classes/CardsClass.dart';
import 'MainMenu.dart';
int n = 0;

final mycards = <Mycards>[
  Mycards(name: ' Кафе', img: 'assets/cafe.webp', number: 1, iconname: 'fitst', child: '/todo1'),
  Mycards(name: ' Рестораны', img: 'assets/rest.jpg', number: 2, iconname: 'fitst', child: '/todo7'),
  Mycards(name: ' Булочные', img: 'assets/fast.jpg',  number: 3, iconname: 'fitst', child: '/todo4'),
  Mycards(name: ' Бары', img: 'assets/bar.jpg',  number: 4, iconname: 'fitst', child: '/todo10'),
  Mycards(name: ' Клубы', img: 'assets/club.jpg',  number: 5, iconname: 'fitst', child: '/todo9'),
  Mycards(name: ' Шаурма', img: 'assets/shaw.jpg', number: 6, iconname: 'fitst', child: '/todo3'),
  Mycards(name: ' Суши', img: 'assets/sushi.jpg',  number: 7, iconname: 'fitst', child: '/todo11'),
  Mycards(name: ' Фаст фуды', img: 'assets/fast.jpg',  number: 8, iconname: 'fitst', child: '/todo12'),
  Mycards(name: ' Кино', img: 'assets/cinema.jpg',  number: 9, iconname: 'fitst', child: '/todo2'),
  Mycards(name: ' Кальянные', img: 'assets/hookah.jpg',  number: 10, iconname: 'fitst', child: '/todo5'),
];

ScrollController _scrollController = new ScrollController();

class ShawScreen extends StatelessWidget {
  const ShawScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BottomSheetThemeData(backgroundColor: Colors.black54),
      backgroundColor: Colors.orange[a],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  Text(mycards[m].name, style: TextStyle(
          fontSize: 35,
          fontFamily: 'CormorantGaramond',
        ),),
        centerTitle: true,
      ),
      body:  ListView.builder(
          controller: _scrollController,
          itemCount: 1,
          itemBuilder: (_, index)
          {
            return Column(
              children: [
                Thiscard(),
                Padding(padding: EdgeInsets.all(1)),

              ],
            );
          }
      ),
      bottomSheet: Container(
        color: Colors.orange[a],
        height: 99,
        child: Container(
          color: Colors.black54,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: (){}, child:  Text('Акции', style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.start), color: Colors.white,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.start), color: Colors.white,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.start), color: Colors.white,),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Thiscard extends StatelessWidget {
  // const MenuList({Key? key}) : super(key: key);
  final allcards = <Allcards>[
    Allcards(name: ' проспект Гагарина, 8А',
        number: 1,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная2',
        number: 2,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная3',
        number: 3,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная4',
        number: 4,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная5',
        number: 5,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная6',
        number: 6,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная7',
        number: 7,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная8',
        number: 8,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная9',
        number: 9,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная10',
        number: 10,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная10',
        number: 10,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная10',
        number: 10,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная10',
        number: 10,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная10',
        number: 10,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная10',
        number: 10,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная10',
        number: 10,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная10',
        number: 10,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная10',
        number: 10,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'булочная10',
        number: 10,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo17',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  ];

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
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 3,
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.8,
          child: ListView.builder(itemCount: allcards.length, itemBuilder: (context, i)
          {
            return  Column(children: [
              ElevatedButton(
                style:  ElevatedButton.styleFrom(
                  primary: Colors.black54,
                ),
                onPressed: (){
                  Navigator.pushNamed(context, allcards[i].child);
                  n=i;
                },
                child:
                Container(
                  height: 50,
                  child:  Row(
                    children: [
                      Icon(Icons.local_cafe, color: Colors.white,),
                      Padding(padding: EdgeInsets.only(right: 20)),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 250,
                                child: Text(allcards[i].name, style: TextStyle(
                                  fontFamily: 'CormorantGaramond',
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 250,
                                height: 25,
                                child: Text('qwe qwe eq wewq wq eewq  qew qewqq we qew eqw qewqwe qwe eq wewq wq eewq  qew qewqq we qew eqw qew', softWrap: true, style: TextStyle(
                                  fontFamily: 'CormorantGaramond',
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                                ),
                              )

                            ],
                          )
                        ],
                      )

                    ],
                  ),
                ),

              ),
              Container(
                height: 2,
              )
            ],);
          }),
        ),
      ],
    );
  }
}