import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Implementasi Row & Column',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String judul = "Politeknik Negeri Bengkalis";
  final String lokasi = "Bengkalis, Riau";
  final String deskripsi = """
    Politeknik Negeri Bengkalis (POLBENG) adalah satu-satunya politeknik negeri yang berada di Riau. 
    Pada tanggal 29 Juli 2011, Politeknik Bengkalis resmi menjadi PTN dengan nama Politeknik Negeri Bengkalis melalui Peraturan Menteri Pendidikan Nasional (Permendiknas). 
    Hingga saat ini POLBENG memiliki 8 jurusan yaitu teknik perkapalan, teknik mesin, teknik elektro, teknik sipil, administrasi niaga, teknik informatika, kemaritiman, dan bahasa.
  """;

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 58, 140),
        title: Text(
          'Profil POLBENG',
          style: GoogleFonts.manrope(
              fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'images/polbeng_logo.png',
            height: 245.0,
            width: 245.0,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 5.0),
          Row(
            children: <Widget>[
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    judul,
                    style: GoogleFonts.manrope(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    lokasi,
                    style: GoogleFonts.manrope(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 15.0),
              Icon(
                Icons.star,
                size: 32.0,
                color: Colors.red,
              ),
              Text(
                '5',
                style: GoogleFonts.manrope(fontSize: 18.0),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              deskripsi,
              style: GoogleFonts.manrope(fontSize: 15.0),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
