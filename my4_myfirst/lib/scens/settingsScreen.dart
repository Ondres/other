import 'package:flutter/material.dart';
import 'package:my4/main.dart';


//var _a = 900;

class UserSettings extends StatelessWidget {
  const UserSettings({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.orange[a],
      appBar: AppBar(
        title: Text('WhereToGo', style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: 'CormorantGaramond'
        ),
        ),

        actions: [
          IconButton(onPressed: (){

            // backgroundColor: Colors.orange[a];
          }, icon: Icon(Icons.menu)),
        ],
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //1
                  Padding(padding: EdgeInsets.all(1)),

                  ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                        primary: Colors.black54,
                      ),
                      onPressed: (){
                       // Navigator.pushNamed(context, '/todo13');
                        a = a1();
                      },
                      child:
                      Container(
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(

                              child: Image(
                                image: AssetImage('assets/cafe.webp'),
                                // image: NetworkImage('https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2021/07/Cafes-in-Greater-Noida.jpg?fit=1000%2C667&ssl=1'),
                                height: 70,
                                width: 65,
                              ),
                            ),
                            Text('Сменить цвет ', style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontFamily: 'CormorantGaramond'
                            ),
                            ),

                            Icon(Icons.local_cafe, color: Colors.white,),
                          ],
                        ),
                      )
                  ),


                ],
              ),




              Padding(padding: EdgeInsets.all(1)),

              Container(
                  color: Colors.black54,
                  height: 90,
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
                  )
              ),


            ],
          )

      ),
    );
  }
}