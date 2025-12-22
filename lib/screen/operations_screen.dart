import 'package:flutter/material.dart';

class OperationsScreen extends StatefulWidget {
  final TextEditingController controller;
  const OperationsScreen({super.key, required this.controller});

  @override
  State<OperationsScreen> createState() => _OperationsScreenState();
}

class _OperationsScreenState extends State<OperationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 300, bottom: 10, right: 20),
          child: TextField(
            controller: widget.controller,
            cursorColor: Colors.white,
            showCursor: false,
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
