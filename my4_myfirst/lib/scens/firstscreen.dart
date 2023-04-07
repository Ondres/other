import 'package:flutter/material.dart';
import 'package:my4/main.dart';



class UserPanel1 extends StatelessWidget {
  const UserPanel1({Key? key}) : super(key: key);


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
                        Navigator.pushNamed(context, '/todo1');
                       // _a1();
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
                                image: AssetImage('assets/cafe.webp'),
                                // image: NetworkImage('https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2021/07/Cafes-in-Greater-Noida.jpg?fit=1000%2C667&ssl=1'),
                                height: 50,
                                width: 65,
                              ),
                            ),
                            Text('  Кафе', style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                                fontFamily: 'CormorantGaramond'
                            ),
                            ),
                          ],
                        ),
                        Icon(Icons.local_cafe, color: Colors.white,),
                      ],
                    ),
                  )
                  ),

//2
                  Padding(padding: EdgeInsets.all(1)),

                  ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                        primary: Colors.black54,
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/todo7');
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
                                image: AssetImage('assets/rest.jpg'),
                                // image: NetworkImage('https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2021/07/Cafes-in-Greater-Noida.jpg?fit=1000%2C667&ssl=1'),
                                height: 50,
                                width: 65,
                              ),
                            ),
                            Text('  Рестораны', style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                                fontFamily: 'CormorantGaramond'
                            ),
                            ),
                          ],
                        ),
                        Icon(Icons.local_cafe, color: Colors.white,),
                      ],
                    ),
                  )
                  ),
                  //3
                  Padding(padding: EdgeInsets.all(1)),

                  ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                        primary: Colors.black54,
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/todo10');
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
                                image: AssetImage('assets/bar.jpg'),
                                // image: NetworkImage('https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2021/07/Cafes-in-Greater-Noida.jpg?fit=1000%2C667&ssl=1'),
                                height: 50,
                                width: 65,
                              ),
                            ),
                            Text('  Бары', style: TextStyle(
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
                  //4
                  Padding(padding: EdgeInsets.all(1)),

                  ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                        primary: Colors.black54,
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/todo3');
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
                                image: AssetImage('assets/shaw.jpg'),
                                // image: NetworkImage('https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2021/07/Cafes-in-Greater-Noida.jpg?fit=1000%2C667&ssl=1'),
                                height: 50,
                                width: 65,
                              ),
                            ),
                            Text('  Шаурма', style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                                fontFamily: 'CormorantGaramond'

                            ),
                            ),
                          ],
                        ),
                        Icon(Icons.local_cafe, color: Colors.white,),
                      ],
                    ),
                  )
                  ),
                  //5
                  Padding(padding: EdgeInsets.all(1)),

                  ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                        primary: Colors.black54,
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/todo4');
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
                                image: AssetImage('assets/fast.jpg'),
                                // image: NetworkImage('https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2021/07/Cafes-in-Greater-Noida.jpg?fit=1000%2C667&ssl=1'),
                                height: 50,
                                width: 65,
                              ),
                            ),
                            Text('  Выпечка', style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                                fontFamily: 'CormorantGaramond'

                            ),
                            ),
                          ],
                        ),
                        Icon(Icons.local_cafe, color: Colors.white,),
                      ],
                    ),
                  )
                  ),
                  //6
                  Padding(padding: EdgeInsets.all(1)),

                  ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                        primary: Colors.black54,
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/todo9');
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
                                image: AssetImage('assets/club.jpg'),
                                // image: NetworkImage('https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2021/07/Cafes-in-Greater-Noida.jpg?fit=1000%2C667&ssl=1'),
                                height: 50,
                                width: 65,
                              ),
                            ),
                            Text('  Клубы', style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                                fontFamily: 'CormorantGaramond'

                            ),
                            ),
                          ],
                        ),
                        Icon(Icons.local_cafe, color: Colors.white,),
                      ],
                    ),
                  )
                  ),
                  //7
                  Padding(padding: EdgeInsets.all(1)),

                  ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                        primary: Colors.black54,
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/todo2');

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
                                image: AssetImage('assets/cinema.jpg'),
                                // image: NetworkImage('https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2021/07/Cafes-in-Greater-Noida.jpg?fit=1000%2C667&ssl=1'),
                                height: 50,
                                width: 65,
                              ),
                            ),
                            Text('  Кинотеатры', style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                                fontFamily: 'CormorantGaramond'

                            ),
                            ),
                          ],
                        ),
                        Icon(Icons.local_cafe, color: Colors.white,),
                      ],
                    ),
                  )
                  ),
                  //8
                  Padding(padding: EdgeInsets.all(1)),

                  ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                        primary: Colors.black54,
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/todo6');
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
                                image: AssetImage('assets/pizza.jpg'),
                                // image: NetworkImage('https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2021/07/Cafes-in-Greater-Noida.jpg?fit=1000%2C667&ssl=1'),
                                height: 50,
                                width: 65,
                              ),
                            ),
                            Text('  Пицерии', style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                                fontFamily: 'CormorantGaramond'

                            ),
                            ),
                          ],
                        ),
                        Icon(Icons.local_cafe, color: Colors.white,),
                      ],
                    ),
                  )
                  ),
                  //9

                  Padding(padding: EdgeInsets.all(1)),

                  ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                        primary: Colors.black54,
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/todo11');
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
                                image: AssetImage('assets/sushi.jpg'),
                                // image: NetworkImage('https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2021/07/Cafes-in-Greater-Noida.jpg?fit=1000%2C667&ssl=1'),
                                height: 50,
                                width: 65,
                              ),
                            ),
                            Text('  Суши', style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                                fontFamily: 'CormorantGaramond'

                            ),
                            ),
                          ],
                        ),
                        Icon(Icons.local_cafe, color: Colors.white,),
                      ],
                    ),
                  )
                  ),

                  Padding(padding: EdgeInsets.all(1)),
                  //10
                  ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                        primary: Colors.black54,
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/todo12');
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
                                image: AssetImage('assets/fast.jpg'),
                                // image: NetworkImage('https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2021/07/Cafes-in-Greater-Noida.jpg?fit=1000%2C667&ssl=1'),
                                height: 50,
                                width: 65,
                              ),
                            ),
                            const Text('  Фаст Фуды', style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontFamily: 'CormorantGaramond'

                            ),
                            ),
                          ],
                        ),
                        Icon(Icons.local_cafe, color: Colors.white,),
                      ],
                    ),
                  )
                  ),

                  Padding(padding: EdgeInsets.all(1)),
                  //11
                  ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                        primary: Colors.black54,
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/todo5');
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
                                image: AssetImage('assets/hookah.jpg'),
                                // image: NetworkImage('https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2021/07/Cafes-in-Greater-Noida.jpg?fit=1000%2C667&ssl=1'),
                                height: 50,
                                width: 65,
                              ),
                            ),
                            Text('  Кальянные', style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                                fontFamily: 'CormorantGaramond'

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
