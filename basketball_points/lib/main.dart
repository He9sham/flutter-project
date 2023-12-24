import 'package:flutter/material.dart';

void main() {
  runApp(basketball_points());
}

// ignore: camel_case_types, must_be_immutable
class basketball_points extends StatefulWidget {
  basketball_points({super.key});

  @override
  State<basketball_points> createState() => _basketball_pointsState();
}

class _basketball_pointsState extends State<basketball_points> {
  // ignore: non_constant_identifier_names
  int TeamApoints = 0;

  // ignore: non_constant_identifier_names
  int TeamBpoints = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Points Counter',
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 33),
                    ),
                    Text(
                      '$TeamApoints',
                      style: TextStyle(fontSize: 170),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          primary: Colors.orange,
                          onPrimary: Colors.black,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamApoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          primary: Colors.orange,
                          onPrimary: Colors.black,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamApoints += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          primary: Colors.orange,
                          onPrimary: Colors.black,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamApoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 500,
                  child: const VerticalDivider(
                      endIndent: 5, indent: 50, thickness: 2),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 33),
                    ),
                    Text(
                      '$TeamBpoints',
                      style: TextStyle(fontSize: 170),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          primary: Colors.orange,
                          onPrimary: Colors.black,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamBpoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          primary: Colors.orange,
                          onPrimary: Colors.black,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamBpoints += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          primary: Colors.orange,
                          onPrimary: Colors.black,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamBpoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(120),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  primary: Colors.orange,
                  onPrimary: Colors.black,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                  setState(() {
                    TeamApoints = 0;
                    TeamBpoints = 0;
                  });
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
