import 'package:flutter/material.dart';

class RadioListTest extends StatefulWidget {
  const RadioListTest({super.key});

  @override
  State<RadioListTest> createState() => _RadioListTestState();
}

enum Gender {MAN, WOMEN}

Gender _gender = Gender.MAN;



class _RadioListTestState extends State<RadioListTest> {
  Gender? gender = Gender.MAN;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Test'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('남자'),
            leading: Radio(
              value: Gender.MAN,
              groupValue : gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              },

            ),
          ),
          ListTile(
            title: const Text('여자'),
            leading: Radio(
              value: Gender.WOMEN,
              groupValue : gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              },

            ),
          ),
          SizedBox(height: 100,),
          RadioListTile(
            title: Text('Man'),
              value: Gender.MAN,
              groupValue: _gender,
              onChanged: (value){
                setState((){
                  _gender = value!;
                });
                },
          ),
          RadioListTile(
            title: Text('Woman'),
            value: Gender.WOMEN,
            groupValue: _gender,
            onChanged: (value){
              setState((){
                _gender = value!;
              });
            },
          ),
        ],
      ),
    );

  }
}
