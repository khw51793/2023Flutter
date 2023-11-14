import 'package:ch6/Person.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget{
  const SecondPage({Key?key,required this.person}):super(key: key);
  final Person person;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text(widget.person.name),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            child: Text('다음 페이지로 이동'),
            onPressed: (){
              Navigator.pop(context, 'ok');
            },
          ),
        ],
      ),
    );
  }
}