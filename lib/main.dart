import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Demo',
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
        title: Text(
          'Demo Row',
          style: GoogleFonts.manrope(fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.black87,
              ),
              child: Text('Button 1',
                  style: GoogleFonts.pixelifySans(fontWeight: FontWeight.w600)),
              onPressed: () {},
            ),
            Container(width: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.black87,
              ),
              child: Text('Button 2',
                  style: GoogleFonts.pixelifySans(fontWeight: FontWeight.w600)),
              onPressed: () {},
            ),
            Container(width: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.black87,
              ),
              child: Text('Button 3',
                  style: GoogleFonts.pixelifySans(fontWeight: FontWeight.w600)),
              onPressed: () {},
            ),
            Container(width: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.black87,
              ),
              child: Text('Button 4',
                  style: GoogleFonts.pixelifySans(fontWeight: FontWeight.w600)),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
