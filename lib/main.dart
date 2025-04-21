import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(HelloApp());

class HelloApp extends StatelessWidget {
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Demo Flutter',
          style: GoogleFonts.manrope(fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: HelloButton(),
      ),
    );
  }
}

class HelloButton extends StatelessWidget {
  const HelloButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amberAccent,
      ),
      child: Text(
        'Hello',
        style: GoogleFonts.pixelifySans(fontSize: 20, color: Colors.black),
      ),
      onPressed: () {
        action(context);
      },
    );
  }
}

void action(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text(
      'Event-Handling',
      style: GoogleFonts.manrope(fontWeight: FontWeight.w700),
    ),
    content: Text(
      'Hello World!',
      style: GoogleFonts.manrope(),
    ),
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    },
  );
}
