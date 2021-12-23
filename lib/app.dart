import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/home_page.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sgr-ksmt',
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.workSansTextTheme(ThemeData.dark().textTheme),
      ),
      home: const HomePage(),
    );
  }
}
