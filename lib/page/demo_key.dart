import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoKey extends StatefulWidget {
  static const String routeName = "/demo_key";

  @override
  _DemoKeyState createState() => _DemoKeyState();
}

class _DemoKeyState extends State<DemoKey> {

  List <String> stringList = ["aaaaa", "bbbbb", "ccccc"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DemoKey"),
      ),
      body: ListView(
        children: stringList.map((string) => ListItemStateful(string, key: ValueKey(string))).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: () {
          setState(() {
            if (stringList.length > 0) {
              stringList.removeAt(0);
            }
          });
        },
      ),
    );
  }
}

/// 无状态item
/// 不可复用，状态每次都会更新
class ListItemStateless extends StatelessWidget {
  final String title;
  final Color randomColor = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));

  ListItemStateless(this.title, {Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(title, style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
      height: 100,
      color: randomColor,
    );
  }
}

/// 有状态item
/// 可复用，状态会被保存在内存中
class ListItemStateful extends StatefulWidget {
  final String title;

  ListItemStateful(this.title, {Key key}) : super(key : key);

  @override
  _ListItemStatefulState createState() => _ListItemStatefulState();
}

class _ListItemStatefulState extends State<ListItemStateful> {
  final Color randomColor = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(widget.title, style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
      height: 100,
      color: randomColor,
    );
  }
}

