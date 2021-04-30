import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoGlobalKey extends StatelessWidget {
  static const String routeName = "/demo_global_key";

  final GlobalKey <_DemoGlobalKeyBodyState> _demoGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DemoGlobalKey"),
      ),
      body: DemoGlobalKeyBody(key: _demoGlobalKey),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          /// 通过GlobalKey，取到对应的widget
          print(_demoGlobalKey.currentState.widget.title);

          /// 通过GlobalKey，取到对应的state
          print(_demoGlobalKey.currentState.subTitle);

          /// 通过GlobalKey，调用state中的方法
          _demoGlobalKey.currentState.test();
        },
      ),
    );
  }
}

class DemoGlobalKeyBody extends StatefulWidget {
  final String title = "I want to buy something";

  DemoGlobalKeyBody({Key key}) : super(key : key);

  @override
  _DemoGlobalKeyBodyState createState() => _DemoGlobalKeyBodyState();
}

class _DemoGlobalKeyBodyState extends State<DemoGlobalKeyBody> {
  final String subTitle = "Today is " + "${DateTime.now().year}" + "-" + "${DateTime.now().month}" + "-" + "${DateTime.now().day}";

  void test() {
    print("-----test-----");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(subTitle, style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
    );
  }
}

