import 'package:demo/page/demo_flutter_reuse.dart';
import 'package:demo/page/demo_global_key.dart';
import 'package:demo/page/demo_key.dart';
import 'package:demo/router.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes:  DemoRouter.routes,
      initialRoute: DemoRouter.initialRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {

  static const String routeName = "/";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              padding: EdgeInsets.all(20),
              child: Text("Flutter复用机制", style: TextStyle(color: Colors.white, fontSize: 20)),
              color: Colors.purple,
              onPressed: () => _jumpToFlutterReusePage(context),
            ),

            SizedBox(height: 50),

            RaisedButton(
              padding: EdgeInsets.all(20),
              child: Text("key", style: TextStyle(color: Colors.white, fontSize: 20)),
              color: Colors.green,
              onPressed: () => _jumpToKeyPage(context),
            ),

            SizedBox(height: 50),

            RaisedButton(
              padding: EdgeInsets.all(20),
              child: Text("global_key", style: TextStyle(color: Colors.white, fontSize: 20)),
              color: Colors.blue,
              onPressed: () => _jumpToGlobalKeyPage(context),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _jumpToFlutterReusePage(BuildContext context) {
    Navigator.of(context).pushNamed(DemoFlutterReuse.routeName);
  }

  _jumpToKeyPage(BuildContext context) {
    Navigator.of(context).pushNamed(DemoKey.routeName);
  }

  _jumpToGlobalKeyPage(BuildContext context) {
    Navigator.of(context).pushNamed(DemoGlobalKey.routeName);
  }
}
