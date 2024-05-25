import 'package:flutter/material.dart';
import 'package:gpstracker/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpstracker/screen/home_screen.dart';
import 'package:gpstracker/navigation/bottom_bar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    // For widgets to be able to read providers, we need to wrap the entire
    // application in a "ProviderScope" widget.
    // This is where the state of our providers will be stored.
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData _buildTheme(brightness) {
      var baseTheme = ThemeData(brightness: brightness);
      final titleLargeSize = Theme.of(context).textTheme.titleLarge?.fontSize ?? 24.0;


      return baseTheme.copyWith(
        textTheme: GoogleFonts.robotoTextTheme(baseTheme.textTheme),
        
      );
    }

    return MaterialApp(
      theme: _buildTheme(Brightness.light),
      home: MyBottomNavigationBar(),
    );
    /*MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        
      )
    );*/
  }
}
