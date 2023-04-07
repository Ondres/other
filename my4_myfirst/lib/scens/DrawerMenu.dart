import 'package:flutter/material.dart';
import 'package:my4/classes/CardsClass.dart';
import 'package:my4/main.dart';
import 'MainMenu.dart';

ScrollController _scrollController = new ScrollController();


class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Scaffold(
          backgroundColor: Colors.orange[a],

          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/ground.webp"),
                  fit: BoxFit.cover),
            ),
            child: Container(
              color: Colors.black54,
              child:   ListView.builder(
                  controller: _scrollController,
                  itemCount: 1,
                  itemBuilder: (_, index)
                  {
                    return Column(
                      children: [
                        Container(
                          //  color: Colors.white70,
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          padding: EdgeInsets.fromLTRB(5,0,5,0),
                          margin: EdgeInsets.fromLTRB(0,0,0,10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(onPressed: (){
                                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                              }, icon: Icon(Icons.home, color: Colors.white, size: 30,)),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                decoration: BoxDecoration(
                                    color: Colors.black54,
                                    border: Border.all(
                                        color: Colors.black,
                                        width: 3
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                //  color: Colors.black54,
                                width: MediaQuery.of(context).size.width*0.6,
                                height: 30,
                                child: TextField(
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                  decoration: InputDecoration(
                                    //     hintText: 'Введите название',
                                    hintStyle: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),

                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(0),
                                      child: Icon(Icons.search, color: Colors.white,size: 20),
                                    ),
                                  ),

                                ),
                              ),
                              IconButton(onPressed: (){

                              }, icon: Icon(Icons.settings, color: Colors.white, size: 30,)),
                            ],
                          ),
                        ),
                        Container(
                          width: 20,
                          height: MediaQuery.of(context).size.height*0.05,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.95,
                          height: MediaQuery.of(context).size.height*0.95,

                          child: ListView.builder(
                            itemCount: mycards.length-2,
                            itemBuilder: (context, i){
                              if (i % 3 == 0)
                                return   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                          children: [
                                            Container(
                                              height: 7,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white12,
                                                    image: DecorationImage(
                                                        image: AssetImage("assets/hookah.jpg"),
                                                        fit: BoxFit.cover),
                                                    border: Border.all(
                                                        color: Colors.white70,
                                                        width: 1
                                                    ),
                                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                                ),
                                                width: MediaQuery.of(context).size.width*0.3,
                                                height: MediaQuery.of(context).size.width*0.3,
                                                padding: EdgeInsets.all(2),
                                                child:  Column(
                                                    children:[
                                                      ElevatedButton(
                                                          style:  ElevatedButton.styleFrom(
                                                            primary: Colors.black12,
                                                          ),
                                                          onPressed: (){
                                                            Navigator.pushNamedAndRemoveUntil(context, '/todo2', (route) => false);
                                                            m=i;
                                                          },
                                                          child: Container(
                                                            height:MediaQuery.of(context).size.width*0.265,
                                                            width: MediaQuery.of(context).size.width*0.26,
                                                            child: Column(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Icon(Icons.local_cafe, color: Colors.white,size: 30,),
                                                                Text(mycards[i].name, style: TextStyle(
                                                                  fontFamily: 'CormorantGaramond',
                                                                  fontSize: 15,
                                                                  color: Colors.white,
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                      ),
                                                    ]
                                                )
                                            ),
                                          ]
                                      ),

                                      Column(
                                          children: [
                                            Container(
                                              height: 7,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white12,
                                                    image: DecorationImage(
                                                        image: AssetImage("assets/hookah.jpg"),
                                                        fit: BoxFit.cover),
                                                    border: Border.all(
                                                        color: Colors.white70,
                                                        width: 1
                                                    ),
                                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                                ),
                                                width: MediaQuery.of(context).size.width*0.3,
                                                height: MediaQuery.of(context).size.width*0.3,
                                                padding: EdgeInsets.all(2),
                                                child:  Column(
                                                    children:[
                                                      ElevatedButton(
                                                          style:  ElevatedButton.styleFrom(
                                                            primary: Colors.black12,
                                                          ),
                                                          onPressed: (){
                                                            Navigator.pushNamedAndRemoveUntil(context, '/todo2', (route) => false);
                                                            m=i;
                                                          },
                                                          child: Container(
                                                            height:MediaQuery.of(context).size.width*0.265,
                                                            width: MediaQuery.of(context).size.width*0.26,
                                                            child: Column(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Icon(Icons.local_cafe, color: Colors.white,size: 30,),
                                                                Text(mycards[i+1].name, style: TextStyle(
                                                                  fontFamily: 'CormorantGaramond',
                                                                  fontSize: 15,
                                                                  color: Colors.white,
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                      ),
                                                    ]
                                                )
                                            ),
                                          ]
                                      ),

                                      Column(
                                          children: [
                                            Container(
                                              height: 7,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white12,
                                                    image: DecorationImage(
                                                        image: AssetImage("assets/hookah.jpg"),
                                                        fit: BoxFit.cover),
                                                    border: Border.all(
                                                        color: Colors.white70,
                                                        width: 1
                                                    ),
                                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                                ),
                                                width: MediaQuery.of(context).size.width*0.3,
                                                height: MediaQuery.of(context).size.width*0.3,
                                                padding: EdgeInsets.all(2),
                                                child:  Column(
                                                    children:[
                                                      ElevatedButton(
                                                          style:  ElevatedButton.styleFrom(
                                                            primary: Colors.black12,
                                                          ),
                                                          onPressed: (){
                                                            Navigator.pushNamedAndRemoveUntil(context, '/todo2', (route) => false);
                                                            m=i;
                                                          },
                                                          child: Container(
                                                            height:MediaQuery.of(context).size.width*0.265,
                                                            width: MediaQuery.of(context).size.width*0.26,
                                                            child: Column(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Icon(Icons.local_cafe, color: Colors.white,size: 30,),
                                                                Text(mycards[i+2].name, style: TextStyle(
                                                                  fontFamily: 'CormorantGaramond',
                                                                  fontSize: 15,
                                                                  color: Colors.white,
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                      ),
                                                    ]
                                                )
                                            ),
                                          ]
                                      ),
                                    ]
                                );
                              return Container(
                                width: 10,
                                height: MediaQuery.of(context).size.height*0.02,
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  }
              ),
            ),

          ),



        )
    );
  }
}

class MenuList extends StatelessWidget {
  // const MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/ground.webp"),
        //    opacity: 90,
          //  colorFilter: ColorFilter.srgbToLinearGamma(),
            fit: BoxFit.cover),),
      child: ListView.builder(
        itemCount: mycards.length,
        itemBuilder: (context, i){
          return  Column(
            children: [
              Container(
                height: 3,
              ),
              ElevatedButton(
                  style:  ElevatedButton.styleFrom(
                    primary: Colors.black54,
                  ),
                  onPressed: (){
                    Navigator.pushNamedAndRemoveUntil(context, mycards[i].child, (route) => false);
                    m=i;
                  },
                  child:
                  Container(
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage(mycards[i].img),
                                // image: NetworkImage('https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2021/07/Cafes-in-Greater-Noida.jpg?fit=1000%2C667&ssl=1'),
                                height: 50,
                                width: 65,
                              ),
                            ),
                            Text(mycards[i].name, style: TextStyle(
                              fontFamily: 'CormorantGaramond',
                              fontSize: 30,
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                        Icon(Icons.local_cafe, color: Colors.white,),
                      ],
                    ),
                  )
              ),
            ],
          );

        },
      ),
    );
  }
}
