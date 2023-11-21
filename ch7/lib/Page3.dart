import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '홈페이지 3 입니다.',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
