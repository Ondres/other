import 'package:flutter/material.dart';
import 'package:lvlapp/Pages/CalendarPage.dart';
import 'package:lvlapp/Pages/Goals/DayPage.dart';
import 'package:lvlapp/Pages/Goals/GoalsPage.dart';

import 'package:lvlapp/classes/classes.dart';

import 'package:get/get.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(

        child: Container(
            color: Color.fromRGBO(9, 0, 0, 0.6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(28, 70, 0, 0),
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,
                        child: Text("MOUNTAIN ARENA", style: TextStyle(
                          color: Colors.white,
                          fontSize: 28
                        ),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.transparent,
                            height: 80,
                            padding: EdgeInsets.fromLTRB(30, 50, 0, 0),
                            child: Text(
                              'notes',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22),
                            ),
                          ),

                          Container(
                              height: 80,
                              padding: EdgeInsets.only(top: 40),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    Note empty_note1 =
                                    new Note(title: "", content: "");

                                    notes1.add(empty_note1);
                                    for (int i = 0; i < notes1.length; i++) {
                                      print(i);
                                      print(notes1[i].title);
                                      print(notes1[i].content);
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              )),

                        ],
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 20),
                        height: MediaQuery.of(context).size.height -
                            180 -
                            MediaQuery.of(context).size.width * 0.25,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            padding: EdgeInsets.all(0),
                            itemCount: notes1.length,
                            itemBuilder: (BuildContext context, int i) {
                              return TextButton(
                                  // padding: EdgeInsets.all(0),
                                  // color: Colors.transparent,
                                  onPressed: () {
                                    setState(() {
                                      index = i;
                                    });
                                    Navigator.of(context)
                                        .pushReplacementNamed('/todo6');
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                      decoration: BoxDecoration(
                                      //  color: Colors.white12,
                                       border: Border(
                                       ),
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),

                                      child: Column(
                                    children: [

                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(5, 0, 0, 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 80,
                                              width: MediaQuery.of(context).size.width * 0.6,
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.6,
                                                    height: 30,
                                                    child: Text(
                                                      notes1[i].title == ""
                                                          ? "New note"
                                                          : notes1[i].title,
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.6,
                                                    height: 50,
                                                    child: Text(
                                                      notes1[i].content == ""
                                                          ? "It`s empty here"
                                                          : notes1[i].content,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    notes1.removeAt(i);
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.delete_sweep,
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      )
                                    ],
                                  )));
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
