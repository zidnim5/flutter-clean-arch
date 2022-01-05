import 'package:flutter/material.dart';
import 'package:clean/screens/home.dart';
import 'package:clean/utils/notification-helper.dart';

// void main() => runApp(const MyApp());

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NotificationHelper.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(
        title: "Clean Architecture",
      ),
    );
  }
}
