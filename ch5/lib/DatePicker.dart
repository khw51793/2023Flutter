import 'package:flutter/material.dart';

class DatePickerTest extends StatefulWidget{
  const DatePickerTest({super.key});

  @override
  State<DatePickerTest> createState() => _DatePickerTestState();
}

class _DatePickerTestState extends State<DatePickerTest>{
  DateTime? selectedTime;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            child: Text('Select Date'),
            onPressed: (){
              Future<DateTime?> selectedDate = showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2018),
                lastDate: DateTime(2030),
                builder: (BuildContext context, Widget? child){
                  return Theme(
                    data: ThemeData.dark(),
                    child: child!,
                  );
                },
              );
              selectedDate.then((dataTime) {
                selectedTime = dataTime;
              }
              );
            },
          ),
        ],
      )
    );
  }
}