import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'TI-RPL',
            style: GoogleFonts.manrope(
                fontWeight: FontWeight.w800, letterSpacing: 2.0),
          ),
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: Text('Rekayasa Perangkat Lunak',
              style: GoogleFonts.manrope(
                shadows: [
                  Shadow(
                      blurRadius: 3.0,
                      color: Colors.black54,
                      offset: Offset(1.0, 1.0))
                ],
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
              textDirection: TextDirection.ltr),
        ),
      ),
    );
  }
}
