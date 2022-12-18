import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2DB400),
        elevation: 1,
        centerTitle: true,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            color: Colors.black,
            fontSize: 35,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
