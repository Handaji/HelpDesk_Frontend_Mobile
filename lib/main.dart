import 'package:flutter/material.dart';
import 'package:helpdesk_mobile/screens/ListProject.dart';
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
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Home Page"),
        backgroundColor: Colors.redAccent,
      ),
      body: ProjectList(),
=======
     debugShowCheckedModeBanner: false,
      home: TopPage(),
>>>>>>> 43200a08b1e30e07145e8dbfd3fcf397eff483c0
    );
  }
}
