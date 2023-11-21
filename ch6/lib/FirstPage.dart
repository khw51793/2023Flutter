import 'package:ch6/Person.dart';
import 'package:flutter/material.dart';
import 'package:ch06/SecondPage.dart';

class FirstPage extends StatefulWidget{
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>{
  String resultStr = '';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Text(resultStr),
          SizedBox(
            height: 45,
          ),
          ElevatedButton(
            child: Text('다음 페이지로 이동'),
            onPressed: () async {
              final person = new Person('홍길동', 30);
              final result = await Navigator.pushNamed(
                  context,
                  '/second');
              setState(() {
                //resultStr = result;
              });
            },
          ),
        ],
      ),
    );
  }
}
