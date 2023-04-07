import 'package:my4/main.dart';
import 'package:flutter/material.dart';
import 'package:my4/classes/CardsClass.dart';

int m=0;

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[a],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Список всех заведений', style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: 'CormorantGaramond'
        ),
        ),
        centerTitle: true,
      //  leading: Icon(Icons.menu),
      ),
      body: MenuList(),

    );
  }
}

class MenuList extends StatelessWidget {
 // const MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                          Navigator.pushNamed(context, mycards[i].child);
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


