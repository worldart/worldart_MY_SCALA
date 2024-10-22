import 'package:kyliesartgalleryPJ01/screens/info_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kylie's Art Gallrey",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 40, 10, 91)),
        useMaterial3: true,
      ),
      home: const SafeArea(child: InfoScreen()),
    );
  }
}

