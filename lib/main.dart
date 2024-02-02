import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const Application());

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blueGrey),
        scaffoldBackgroundColor: Colors.blueGrey.shade100,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
          brightness: Brightness.light,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          decoration: BoxDecoration(color: Colors.blueGrey.shade200),
          child: FittedBox(
            child: Text(
              'Hello world!'.toUpperCase(),
              style: GoogleFonts.rubikBurned(fontSize: 120.0, color: Colors.blueGrey),
            ),
          ),
        ),
      ),
    );
  }
}
