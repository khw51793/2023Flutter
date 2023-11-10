import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  final valueList = ['First Item', 'Second Item', 'Third Item'];
  String selectedItem = 'First Item';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDwon Test'),
        backgroundColor: Colors.purple,
      ),
      body: DropdownButton(
        value : selectedItem,
        items : valueList.map(
            (value) {
              return DropdownMenuItem(
                value: value,
                  child: Text(value),
              );
            }
        ).toList(),
        onChanged: (String? value){
          setState(() {
            selectedItem = value!;
          });
        },
      ),
    );
  }
}
