import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {

  String inputMessage = '';
  final myController = TextEditingController();

  initState(){
    super.initState();
    myController.addListener(_printLatestValue);
  }

  _printLatestValue(){
    setState(() {
      inputMessage = myController.text;
    });
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Input 연습'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('$inputMessage'),
            SizedBox(height: 20,),
            TextField(
              onChanged: (text){
                setState(() {
                  inputMessage = text;
                });
              },
            ),
            SizedBox(height: 20,),
            TextField(
              controller:  myController,
            ),
          ],
        ),
      ),
    );
  }
}
