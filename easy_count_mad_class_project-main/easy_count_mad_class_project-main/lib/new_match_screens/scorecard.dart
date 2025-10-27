import 'package:flutter/material.dart';

class ScoreboardScreen extends StatelessWidget {
  const ScoreboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scoreboard: Team1 vs Team2'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Scorecard section
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(
                    color: Colors.blueGrey,
                    width: 4.0,
                  )
                ),
                elevation: 16,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Text(
                        'Team1, Inning1, (5 overs)',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '139/4',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '(4.5)',
                            style: TextStyle(fontSize: 36, color: Colors.grey[600]),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('CRR: 50.00'),
                          Text('RRR: 20'),
                          Text('Target: 140'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 4),
              // Batsman and Bowler table
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(
                    color: Colors.blueGrey,
                    width: 4.0,
                  )
                ),
                elevation: 16,
                child: Column(
                  children: [
                    Table(
                      border: TableBorder.all(color: Colors.blueGrey),
                      children: const [
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Batsman', style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('R'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('B'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('4s'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('6s'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('SR'),
                            ),
                          ],
                        ),
                        // First batsman row
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Player1*'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('30'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('36'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('8'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('4'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('100.00'),
                            ),
                          ],
                        ),
                        // Second batsman row
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Player2'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('8'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('10'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('2'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('1'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('30.00'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    Table(
                      border: TableBorder.all(color: Colors.blueGrey),
                      children: const [
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Bowler', style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('O'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('M'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('R'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('W'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('ER'),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Bowler1'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('2.0'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('3'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('4'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('1'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('6.00'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),

              //current over update card
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(
                    color: Colors.blueGrey,
                    width: 4.0,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text('This Over : ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Text('1 2 3 4 5 6 8',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),

              // wicket, wide, byes, no ball legbyes buttons
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(
                    color: Colors.blueGrey,
                    width: 4.0,
                  )
                ),
                elevation: 8,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        // Define a uniform button size
                       // const Size buttonSize = Size(70, 50); // Adjust as needed
        
                    ElevatedButton(
                    onPressed: () {
                     showDialog(context: context, builder: (BuildContext context){
                       return AlertDialog(
                         backgroundColor: Colors.blueGrey[50],
                         title: const Text('Select Wicket Type'),
                         content: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: SizedBox(
                             height: 400,
                             width:   200,
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                             child: SingleChildScrollView(
                               child: Column(
                                 children: [
                                   Card(
                                     child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                       minimumSize: const Size(150, 15),
                                     ),child: const Text('Clean Bowled'),),
                                   ),
                                   Card(
                                     child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                       minimumSize: const Size(150, 15),
                                     ),child: const Text('Catch Out'),),
                                   ),
                                   Card(
                                     child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                       minimumSize: const Size(150, 15),
                                     ),child: const Text('Stump Out'),),
                                   ),
                                   Card(
                                     child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                       minimumSize: const Size(150, 15),
                                     ),child: const Text('LBW'),),
                                   ),
                                   Card(
                                     child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                       minimumSize: const Size(150, 15),
                                     ),child: const Text('Run Out'),),
                                   ),
                                   Card(
                                     child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                       minimumSize: const Size(150, 15),
                                     ),child: const Text('Hit Wicket'),),
                                   ),
                                   Card(
                                     child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                       minimumSize: const Size(150, 15),
                                     ),child: const Text('Retire hurt'),),
                                   ),
                                 ],
                               ),
                             ),)
                           ),
                         ),
                       );
                     });
                    },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(70, 50),
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Wicket'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(70, 50),
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('No Ball'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(70, 50),
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Wide'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(70, 50),
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Byes'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(70, 50),
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Leg Byes'),
              ),
            ],
          ),
        ),
            ),
              const SizedBox(height: 4),
        
              // Score Buttons Grid
              GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 2,  // Adjusted height of buttons
                children: [
                  ScoreButton(label: '0'),
                  ScoreButton(label: '1'),
                  ScoreButton(label: '2'),
                  ScoreButton(label: 'SWAP'),
                  ScoreButton(label: '3'),
                  ScoreButton(label: '4'),
                  ScoreButton(label: '6'),
                  ScoreButton(label: 'UNDO'),
                ],
              ),
              const SizedBox(height: 4),
        
              // Live Match Summary
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(
                    color: Colors.blueGrey,
                    width: 4.0,
                  )
                ),
                elevation: 8,
                child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/summaryScreen');

                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: Colors.blueGrey, // Background color teal
                        foregroundColor: Colors.white, // Text color white
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // Rounded corners
                        ),
                      ),
                      child: const Text(
                        'This Match Summary',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final String label;
  final Color color;

  const ActionButton({super.key, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(70, 50), // Adjusted height for better look
      ),
      onPressed: () {},
      child: Text(label),
    );
  }
}

class ScoreButton extends StatelessWidget {
  final String label;

  const ScoreButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(70, 50), // Adjusted height for better look
      ),
      onPressed: () {},
      child: Text(label),
    );
  }
}

class BottomButton extends StatelessWidget {
  final String label;

  const BottomButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(100, 50), // Adjusted height for better look
      ),
      onPressed: () {},
      child: Text(label),
    );
  }
}
