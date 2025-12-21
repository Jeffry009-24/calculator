import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 300, bottom: 10, right: 20),
          child: TextField(
            cursorColor: Colors.white,
            showCursor: true,
            readOnly: true,
            style: TextStyle(color: Colors.white, fontSize: 50),
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
              hintText: '0',
              hintStyle: TextStyle(color: Colors.white),
              hintTextDirection: TextDirection.rtl,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
