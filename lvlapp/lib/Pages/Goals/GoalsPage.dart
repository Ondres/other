import 'package:flutter/material.dart';

import 'package:lvlapp/classes/classes.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({Key? key}) : super(key: key);

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
       body: Container(
            color: Color.fromRGBO(9, 0, 0, 0.8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                              'missions',
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

                                    NotesGoals.add(empty_note1);
                                    for (int i = 0; i < NotesGoals.length; i++) {
                                      print(i);
                                      print(NotesGoals[i].title);
                                      print(NotesGoals[i].content);
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
                            itemCount: NotesGoals.length,
                            itemBuilder: (BuildContext context, int i) {
                              return TextButton(

                                  // padding: EdgeInsets.all(0),
                                  // color: Colors.transparent,
                                  onPressed: () {
                                    setState(() {
                                      indexNotesGoals = i;
                                    });
                                    Navigator.of(context)
                                        .pushReplacementNamed('/todo3');
                                  },
                                  child: Container(
                                      margin: EdgeInsets.all(10),
                                      padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                      decoration: BoxDecoration(
                                     //   color: Colors.white12,
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
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.6,
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
                                                      NotesGoals[i].title == ""
                                                          ? "New note"
                                                          : NotesGoals[i].title,
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
                                                      NotesGoals[i].content ==
                                                              ""
                                                          ? "It`s empty here"
                                                          : NotesGoals[i]
                                                              .content,
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
                                                    NotesGoals.removeAt(i);
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
    );
  }
}
