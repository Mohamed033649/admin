import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.blue,
                  width: 350,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Image.asset(
                        "images/th.jpeg",
                        alignment: Alignment.topCenter,
                        height: 200,
                        width: 200,
                      ),
                      // this container for ICons and text
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.list_alt_outlined,
                              size: 30,
                            ),
                            Text(
                              " my reports",
                              style: TextStyle(
                                fontSize: 35,
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
            Divider(),

            //the second part
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: const Color.fromARGB(255, 78, 145, 201),
                  child: Text(
                    "All patient reports",
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "All patients ",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "/",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "Reports",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                //for box decoration
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 245, 240, 240),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  width: 200,
                  height: 100,
                  child: Text(
                    "8",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),

                // table ?
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(1),
                        child: Text("title 1"),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(1),
                        child: Text("title 1"),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(1),
                        child: Text("title 1"),
                      ),
                    ),
                  ],
                ),
                ...List.generate(
                    4,
                    (index) => const TableRow(children: [
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text("cedas5"),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text("title 1"),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text("title 1"),
                            ),
                          ),
                        ]))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
