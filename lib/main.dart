import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mengatur Teks dan Gambar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Metode ListView'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'assets/images/Kemendikbud.png',
            height: 250.0,
            fit: BoxFit.fill,
          ),
          Divider(),
          Image.asset(
            'assets/images/polbeng_logo.png',
            height: 250.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
