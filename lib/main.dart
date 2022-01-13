import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'SignupPage.dart';
import 'NewProject.dart';
import 'NewTache.dart';
import 'NewTicket.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HelpDesk',
     debugShowCheckedModeBanner: false,
      home: NTache(),
    );
  }
}
