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
      themeMode: ThemeMode.system,
      theme: _theme(ThemeData.light()),
      darkTheme: _theme(ThemeData.dark()),
      home: const HomePage(),
    );
  }

  ThemeData _theme(ThemeData data) => data.copyWith(
        textTheme: GoogleFonts.workSansTextTheme(
          data.textTheme,
        ),
        primaryColor: Colors.grey[900],
      );
}
