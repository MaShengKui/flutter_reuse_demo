import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoFlutterReuse extends StatefulWidget {
  static const String routeName = "/demo_flutter_reuse";

  @override
  _DemoFlutterReuseState createState() => _DemoFlutterReuseState();
}

/// flutter官方举例，renderObject复用；
/// 可以根据打开Open DevTools窗口进行验证，查看对应widget的renderObjectId发现确实会被复用。

class _DemoFlutterReuseState extends State<DemoFlutterReuse> {

  bool _isWorld = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DemoFlutterReuse"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: _isWorld ? _buildRichText("Hello World") : _buildRichText("Hello Flutter")
          ),

          SizedBox(height: 20),

          // Padding(padding: EdgeInsets.only(top: 20)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: changeRichText,
      ),
    );
  }

  Widget _buildRichText(String text) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TextStyle(color: Colors.red, fontSize: 30),
      ),
    );
  }

  void changeRichText() {
    setState(() {
      _isWorld = !_isWorld;
    });
  }
}
