import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertesttask/domains/api_client/api_client.dart';

import '../classes/myImg.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {


  @override
  Widget build(BuildContext context) {

    var searchController;
    ScrollController _scrollController = new ScrollController();
    return
      Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(255,229,165, 1),
                  Color.fromRGBO(255,205,82,1),
                ],
              )),
        child:
      Scaffold(
        backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:
            Container(
                height: MediaQuery.of(context).size.width/8.5,
                width: MediaQuery.of(context).size.width/8.5,
                margin: EdgeInsets.fromLTRB(16, 45, 0, 16),
                child:
        IconButton(
            padding: EdgeInsets.all(0),
            splashRadius: 22,
            onPressed: (){}, icon:  Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Big.png'),
                fit: BoxFit.contain),
            borderRadius: BorderRadius.all(Radius.circular(90)),
          ),
          height: MediaQuery.of(context).size.width/8.5,
          width: MediaQuery.of(context).size.width/8.5,
        ))),

        actions: [
          Container(
             margin: EdgeInsets.fromLTRB(0, 45, 16, 16),
        child:
          IconButton(
              splashRadius: 22,
              padding: EdgeInsets.all(0),
              onPressed: (){}, icon:  Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/big_btn.png'),
                  fit: BoxFit.contain),
           //   color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            height: MediaQuery.of(context).size.width/8.5,
            width: MediaQuery.of(context).size.width/8.5,
          ))),

        ],
      ),
      body: SafeArea(
              child: ListView.builder(

          controller: _scrollController,
          itemCount: 1,
          itemBuilder: (_, index) {
            return
              Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Center(child:
                    Container(
                      padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      width: MediaQuery.of(context).size.width/1.09,
                      height: MediaQuery.of(context).size.height/2.44,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/12.6,
                            width: MediaQuery.of(context).size.width/1.2,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(151, 161, 181, 0.2),
                                    width: 1),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.width/8.5,
                                  width: MediaQuery.of(context).size.width/8.5,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/img1.png'),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 4),
                                  height: MediaQuery.of(context).size.height/18,

                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text('Inbox', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),),
                                        width: MediaQuery.of(context).size.width/2.67,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context).size.width/2.67,
                                          child: Text('12 files・1 hour ago',
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),)
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/12.66,
                            width: MediaQuery.of(context).size.width/1.2,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(151, 161, 181, 0.2),
                                    width: 1),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
            height: MediaQuery.of(context).size.width/8.5,
            width: MediaQuery.of(context).size.width/8.5,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/img2.png'),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 4),

                                  height: MediaQuery.of(context).size.height/18,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text('Inbox', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),),
                                        width: MediaQuery.of(context).size.width/2.67,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context).size.width/2.67,
                                          child: Text('12 files・1 hour ago',
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),)
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/12.66,
                            width: MediaQuery.of(context).size.width/1.2,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(151, 161, 181, 0.2),
                                    width: 1),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                        height: MediaQuery.of(context).size.width/8.5,
                        width: MediaQuery.of(context).size.width/8.5,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/img3.png'),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 4),

                                  height: MediaQuery.of(context).size.height/18,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text('Inbox', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),),
                                        width: MediaQuery.of(context).size.width/2.67,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context).size.width/2.67,
                                          child: Text('12 files・1 hour ago',
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),)
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/12.66,
                            width: MediaQuery.of(context).size.width/1.2,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(151, 161, 181, 0.2),
                                    width: 1),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
            height: MediaQuery.of(context).size.width/8.5,
            width: MediaQuery.of(context).size.width/8.5,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/img4.png'),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 4),

                                  height: MediaQuery.of(context).size.height/18,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text('Inbox', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),),
                                        width: MediaQuery.of(context).size.width/2.67,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context).size.width/2.67,
                                          child: Text('12 files・1 hour ago',
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),)
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/12.66,
                            width: MediaQuery.of(context).size.width/1.2,
                            child: Row(
                              children: [
                                Container(
            height: MediaQuery.of(context).size.width/8.5,
            width: MediaQuery.of(context).size.width/8.5,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/img5.png'),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 4),

                                  height: MediaQuery.of(context).size.height/18,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text('Inbox', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),),
                                        width: MediaQuery.of(context).size.width/2.67,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context).size.width/2.67,
                                          child: Text('12 files・1 hour ago',
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),)
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    )),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 16),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(247, 248, 251, 1),
                        borderRadius: BorderRadius.only(topLeft: Radius
                            .circular(16), topRight: Radius.circular(16)),
                      ),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 24, 0, 16),
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/1.47,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)),
                                    ),
                                    padding: EdgeInsets.only(bottom: 5),
                                    child:
                                    TextField(
                                      controller: searchController,
                                      style: TextStyle(
                                          color: Colors.black
                                      ),
                                      decoration: InputDecoration(
                                        hintText: 'Search',
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromRGBO(
                                              151, 161, 181, 1),
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
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.only(top: 8),
                                          child: Icon(Icons.search,
                                              color: Color.fromRGBO(
                                                  151, 161, 181, 1), size: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/BG.png'),
                                          fit: BoxFit.scaleDown),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(90)),
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/BG2.png'),
                                          fit: BoxFit.scaleDown),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(90)),
                                    ),
                                  )
                                ],
                              )
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/24,
                            padding: EdgeInsets.fromLTRB(16, 0, 16, 10),
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'PINNED FOLDERS・3', style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(151, 161, 181, 1),
                                  ),),
                                ),
                                Container(
                                  child: Text('Hide', style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(71, 106, 219, 1),
                                  ),),
                                ),
                              ],
                            ),
                          ),

                          Center(child:
                          Container(
                            margin: EdgeInsets.only(bottom: 26),
                            padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(8)),
                            ),
                            width: MediaQuery.of(context).size.width/1.09,
                            height: MediaQuery.of(context).size.height/4,
                            child: Column(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height/12.66,
                                  width: MediaQuery.of(context).size.width/1.2,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Color.fromRGBO(
                                          151, 161, 181, 0.2),
                                          width: 1),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: MediaQuery.of(context).size.width/8.5,
                                        width: MediaQuery.of(context).size.width/8.5,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/folder.png'),
                                              fit: BoxFit.contain),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 4),
                                        height: MediaQuery.of(context).size.height/18,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text('Custom Folder 1',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                ),),
                                              width: MediaQuery.of(context).size.width/2.67,
                                            ),
                                            Container(
                                                width: MediaQuery.of(context).size.width/2.67,
                                                child: Text(
                                                  '12 files・1 hour ago',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                  ),)
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height/12.66,
                                  width: MediaQuery.of(context).size.width/1.2,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Color.fromRGBO(
                                          151, 161, 181, 0.2),
                                          width: 1),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: MediaQuery.of(context).size.width/8.5,
                                        width: MediaQuery.of(context).size.width/8.5,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/folder.png'),
                                              fit: BoxFit.contain),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 4),

                                        height: MediaQuery.of(context).size.height/18,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text('Custom Folder 2',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                ),),
                                              width: MediaQuery.of(context).size.width/2.67,
                                            ),
                                            Container(
                                                width: MediaQuery.of(context).size.width/2.67,
                                                child: Text(
                                                  '12 files・1 hour ago',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                  ),)
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height/12.66,
                                  width: MediaQuery.of(context).size.width/1.2,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: MediaQuery.of(context).size.width/8.5,
                                        width: MediaQuery.of(context).size.width/8.5,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/folder.png'),
                                              fit: BoxFit.contain),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 4),

                                        height: MediaQuery.of(context).size.height/18,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text(
                                                'Folder Name', style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),),
                                              width: MediaQuery.of(context).size.width/2.67,
                                            ),
                                            Container(
                                                width: MediaQuery.of(context).size.width/2.67,
                                                child: Text(
                                                  '12 files・1 hour ago',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                  ),)
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                          Container(
                            height: MediaQuery.of(context).size.height/24,
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.fromLTRB(16, 0, 16, 10),
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    'UNSORTED・23 JUL 2020', style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(151, 161, 181, 1),
                                  ),),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*0.4,
                            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                            child: CustomScrollView(
                              slivers: <Widget>[

                                SliverGrid(
                                  gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: MediaQuery.of(context).size.width/1.97,
                                    mainAxisExtent: MediaQuery.of(context).size.height/4.65,
                                    mainAxisSpacing: 0.0,
                                    crossAxisSpacing: 7.0,
                                    childAspectRatio: 1.0,
                                  ),

                                  delegate: SliverChildBuilderDelegate(
                                        (BuildContext context, int index) {
                                      return Container(
                                        width: MediaQuery.of(context).size.width/2.23,
                                        height: MediaQuery.of(context).size.height/5,

                                        child: Column(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.black26,
                                                image: DecorationImage(
                                                    image: NetworkImage(alltasks[index].url),
                                                    fit: BoxFit.cover,
                                                ),
                                           borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                                        ),

                                              height: MediaQuery.of(context).size.height/7.8,
                                              width: MediaQuery.of(context).size.width/2.23,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
                                              color: Colors.white
                                              ),
                                              height: MediaQuery.of(context).size.height/18,
                                              width: MediaQuery.of(context).size.width/2.23,
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      alltasks[index].title.substring(0,5)+'...'
                                                      + alltasks[index].title.substring(alltasks[index].title.length-6,
                                                          alltasks[index].title.length-1), style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 14,
                                                    ),),
                                                    width: MediaQuery.of(context).size.width/2.67,
                                                  ),
                                                  Container(
                                                      width: MediaQuery.of(context).size.width/2.67,
                                                      child: Text(
                                                        '23 Jul 2020',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                        ),)
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    childCount: alltasks.length,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              );
          }),
    )));
  }
}
