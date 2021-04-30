import 'package:demo/main.dart';
import 'package:demo/page/demo_flutter_reuse.dart';
import 'package:demo/page/demo_global_key.dart';
import 'package:demo/page/demo_key.dart';
import 'package:flutter/cupertino.dart';

class DemoRouter {

  static final Map<String, WidgetBuilder> routes = {
    MyHomePage.routeName: (ctx) => MyHomePage(),
    DemoFlutterReuse.routeName: (ctx) => DemoFlutterReuse(),
    DemoKey.routeName: (ctx) => DemoKey(),
    DemoGlobalKey.routeName: (ctx) => DemoGlobalKey(),
  };

  /// 初始化route
  static final String initialRoute = MyHomePage.routeName;
}