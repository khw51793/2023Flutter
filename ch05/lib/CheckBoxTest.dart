import 'package:flutter/material.dart';

class CheckBoxTest extends StatefulWidget {
  const CheckBoxTest({super.key});

  @override
  State<CheckBoxTest> createState() => _CheckBoxTestState();
}

class _CheckBoxTestState extends State<CheckBoxTest> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox Test'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value){
              setState(() {
                isChecked = value;
              });
            },
          ),
          SizedBox(
            height : 40,
          )
          Switch(
              value: isChecked!,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
          ),
        ],
      ),
    );
  }
}
