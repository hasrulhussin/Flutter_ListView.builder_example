import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListDisplay(),
    );
  }
}



class ListDisplay extends StatefulWidget {
  @override
  _ListDisplayState createState() => _ListDisplayState();
}

class _ListDisplayState extends State<ListDisplay> {

List<String> items = ['Try-1', 'Try-2', 'Try-3', 'Try-4'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Demo'),
      ),
      body: ListView.builder(
        itemCount: items.length,
          itemBuilder: (BuildContext ctx, int index){
            return Text(items[index]);
          },
      ),
    );
  }
}

