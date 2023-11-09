import 'package:flutter/material.dart';

class EventText extends StatefulWidget{
  const EventText({super.key});

  @override
  State<EventText> createState() => _EventTextState();
}

class _EventTextState extends State<EventText>{
  String eventMessage = '초기값';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Test'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$eventMessage'),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                eventMessage = 'Gesture Detector 클릭';
              });
            },
            child:Text('클릭 me'),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: (){
              setState(() {
                eventMessage = 'InkWell 클릭';
              });
            },
            child: Text('InkWell 클릭')
          ),
        ],
      )
    );
  }
}