import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value){
              if(value!.isEmpty){
                return'글자를 입력하세요';
              }
              else
                return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                   ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(content: Text('검증 완료'))
                   );
                  }
                },
                child: Text('검증'),
            ),
          ),
        ],
      ),
    );
  }
}
