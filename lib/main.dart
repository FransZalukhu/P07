import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Icon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String fileName = 'assets/images/Kemendikbud.png';

  void selectImage(int index) {
    setState(() {
      switch (index) {
        case 0:
          fileName = 'assets/images/Kemendikbud.png';
          break;
        case 1:
          fileName = 'assets/images/polbeng_logo.png';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Icon'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.laptop),
            onPressed: () {
              selectImage(0);
            },
          ),
          IconButton(
            icon: Icon(Icons.account_balance),
            onPressed: () {
              selectImage(1);
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            fileName,
            height: 350.0,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
