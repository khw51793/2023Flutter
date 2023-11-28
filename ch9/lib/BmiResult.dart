import 'package:flutter/material.dart';

class BmiResult extends StatefulWidget {
  final double height;
  final double weight;
  const BmiResult({Key? key,
    required this.height,
    required this.weight});

  @override
  State<BmiResult> createState() => _BmiResultState();
}

class _BmiResultState extends State<BmiResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('비만도 계산기'),
      backgroundColor: Colors.purple,
      ),
    );

  }
}
