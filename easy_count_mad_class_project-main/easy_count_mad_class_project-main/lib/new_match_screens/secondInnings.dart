// import 'package:easy_count/demo.dart';
import 'package:flutter/material.dart';

class SecondInnings extends StatefulWidget {
  const SecondInnings({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<SecondInnings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // this card for batsman summary
              Card(
                child: Column(
                  children: [
                    const Card(
                      color: Colors.blueGrey,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '::',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Batsman',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('R',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('B',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('6s',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('4s',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('0s',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('SR',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return const Card(
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('1'),
                                  Text('Batsman'),
                                  Text('14'),
                                  Text('20'),
                                  Text('8'),
                                  Text('10s'),
                                  Text('9'),
                                  Text('30'),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),

              //this card for bowler summary
              Card(
                child: Column(
                  children: [
                    Card(
                      color: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(
                            color: Colors.blueGrey,
                          )),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Bowler',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('R',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('O',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('W',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('E',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('M',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('SR',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return const Card(
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Batsman'),
                                  Text('11'),
                                  Text('15'),
                                  Text('0'),
                                  Text('1'),
                                  Text('2'),
                                  Text('10'),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),

              // this card for over summary
              Card(
                child: Column(
                  children: [
                    const Card(
                      color: Colors.blueGrey,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Batsman'),
                            Text('19'),
                            Text('25'),
                            Text('1'),
                            Text('2'),
                            Text('2'),
                            Text('18'),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return const Card(
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Batsman'),
                                  Text('28'),
                                  Text('25'),
                                  Text('2'),
                                  Text('3'),
                                  Text('3'),
                                  Text('25'),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
