import 'package:flutter/material.dart';

void main() {
  runApp(birthdaycardapp());
}

class birthdaycardapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        appBar: AppBar(
          title: Text("the is my app"),
        ),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 100,
              color: Colors.blue,
              child: Center(
                child: Text("my photo"),
              ),
            ),
            Container(
              height: 60,
              width: 100,
              color: Colors.green,
              child: Center(
                child: Text("my lap"),
              ),
            ),
            Container(
              height: 60,
              width: 100,
              color: Colors.blueGrey,
              child: Center(
                child: Text("settings"),
              ),
            ),
            Container(
              height: 60,
              width: 100,
              color: Colors.red,
              child: Center(
                child: Text("exit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
