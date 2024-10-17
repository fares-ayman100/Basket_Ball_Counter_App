import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int TeamAPoints = 0;

  int TeamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Points Counter",
            style: TextStyle(fontSize: 33, color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 55,
                      ),
                    ),
                    Text(
                      '$TeamAPoints',
                      style: TextStyle(
                        fontSize: 170,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(160, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {
                        
                        setState(() {
                          TeamAPoints++;
                        });
                        print('Team A Counter');
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 27, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(160, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {
                        
                        setState(() {
                          TeamAPoints += 2;
                        });
                        print('Team A Counter');
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(160, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {
                        
                        setState(() {
                          TeamAPoints += 3;
                        });
                        print('Team A Counter');
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(fontSize: 27, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    thickness: 2,
                    color: Color(0xFF898989),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 55,
                      ),
                    ),
                    Text(
                      '$TeamBPoints',
                      style: TextStyle(
                        fontSize: 170,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(160, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {
                        
                        setState(() {
                         TeamBPoints++; 
                        });
                        print('Team B Counter');
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 27, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(160, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {
                        
                        setState(() {
                          TeamBPoints += 2;
                        });
                        print('Team B Counter');
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(160, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {
                        
                        setState(() {
                          TeamBPoints += 3;
                        });
                        print('Team B Counter');
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(fontSize: 27, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(160, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              onPressed: () {
                
                setState(() {
                TeamAPoints = 0;
                TeamBPoints = 0;
              });
              },
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 32, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
