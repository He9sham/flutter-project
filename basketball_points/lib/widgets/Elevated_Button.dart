import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
 const CustomElevatedButton({super.key, required this.onpressed , required this.NameButton});

 final Function() onpressed;
  final String NameButton;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        primary: Colors.orange,
        onPrimary: Colors.black,
        minimumSize: const Size(150, 50),
      ),
      onPressed: onpressed,
      child:  Text(
        NameButton,
        style: const TextStyle(fontSize: 17),
      ),
    );
  }
}
