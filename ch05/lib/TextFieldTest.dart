import 'package:flutter/material.dart';

class TextFieldTest extends StatefulWidget {
  const TextFieldTest({super.key});

  @override
  State<TextFieldTest> createState() => _TextFieldTestState();
}

class _TextFieldTestState extends State<TextFieldTest> {
  String inputText = '입력한 결과';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Test'),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Text('$inputText',
              style :TextStyle(
                fontSize: 40,
              ),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            onChanged: (text){...},
          ),
          SizedBox(...),
          TextField(
            onChanged: (text){...},
            decoration: InputDecoration(
              labelText: '이름을 입력하세요'
            ),
          ),
          SizedBox(...),
          TextField(
            onChanged: (text){...},
            decoration: InputDecoration(
              labelText: '나이를 입력하세요'
            ),
          )
        ],
      ),
    );
  }
}
