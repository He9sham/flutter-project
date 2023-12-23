import 'package:flutter/material.dart';

// the is my app && my card busniess card
void main() {
  runApp(const busniesscard());
}

// ignore: camel_case_types
class busniesscard extends StatelessWidget {
  const busniesscard({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff2B5AAB), // back ground for app
        body: Column(
          mainAxisAlignment:
              MainAxisAlignment.values.first, // position the photo
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: CircleAvatar(
                radius: 100, // size the photo // photo radius
                backgroundColor: Colors.white, // color avatar is white
                child: Padding(
                  padding: const EdgeInsets.all(2), // Border radius
                  child: ClipOval(
                    child: Image.asset('images/download.png'),
                  ),
                ),
              ),
            ),
            const Text(
              // create a text
              'Hesham Hamdan',
              style: TextStyle(
                // control a text
                color: Colors.white,
                fontSize: 23, // size the text
                fontFamily: 'Pacifico', // text type
              ),
            ),
            const Text(
              'flutter developer',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
                color: Colors.grey[50],
                thickness: 1,
                indent: 20,
                endIndent: 20,
                height: 15),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Color(0xff2B5AAB),
                  size: 28,
                ),
                title: Text(
                  '(+20)1023181225',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Color(0xff2B5AAB),
                  size: 28,
                ),
                title: Text(
                  'heshamhamdan51@gmail.com',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
