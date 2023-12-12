import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(DiaryApp());
}

class DiaryApp extends StatelessWidget {
  DiaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '일기장 앱',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DiaryScreen(),
    );
  }
}

class DiaryScreen extends StatefulWidget { // 일기 항목을 저장할 리스트
  DiaryScreen({super.key});

  @override
  _DiaryScreenState createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  List<DiaryEntry> entries = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('일기장'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: entries.length,
              itemBuilder: (context, index) {
                return Dismissible( // 각 항목을 삭제 가능하게 만듬
                  key: Key(entries[index].date.toString()),
                  background: Container(
                    color: Colors.red,
                    alignment: AlignmentDirectional.centerEnd,
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  onDismissed: (direction) {
                    _deleteEntry(index);
                  },
                  child: ListTile(
                    title: Text(entries[index].text),
                    subtitle: Text(_formatDate(entries[index].date)),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                _addEntry();
              },
              child: Text('일기 작성'),
            ),
          ),
        ],
      ),
    );
  }

  void _addEntry() {  // 일기 항목을 추가하는 다이얼로그 표시
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController entryController = TextEditingController();

        return AlertDialog(
          title: Text('일기 작성'),
          content: TextField(
            controller: entryController,
            maxLines: 3,
            decoration: InputDecoration(labelText: '오늘의 일기를 작성하세요'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('취소'),
            ),
            TextButton(
              onPressed: () { // 입력된 일기를 리스트에 추가하고 다이얼로그 닫기
                setState(() {
                  entries.add(
                    DiaryEntry(
                      text: entryController.text,
                      date: DateTime.now(),
                    ),
                  );
                });
                Navigator.of(context).pop();
              },
              child: Text('저장'),
            ),
          ],
        );
      },
    );
  }

  void _deleteEntry(int index) { // 일기 항목을 삭제
    setState(() {
      entries.removeAt(index);
    });
  }

  String _formatDate(DateTime date) { // 날짜 포맷
    return DateFormat('yyyy-MM-dd HH:mm').format(date);
  }
}

class DiaryEntry { // 일기 항목을 나타냄
  String text;
  DateTime date;

  DiaryEntry({required this.text, required this.date});
}