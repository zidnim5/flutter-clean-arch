import 'package:flutter/material.dart';
import 'package:clean/utils/notification-helper.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: const EdgeInsets.only(top: 20, bottom: 20)),
            onPressed: () => NotificationHelper.showNotification(
              title: "notificatoin title",
              body: "notificatoin body",
              payload: "Clean Arc",
            ),
            child: Text("Simple Notification"),
          ),
        ),
      ),
    );
  }
}
