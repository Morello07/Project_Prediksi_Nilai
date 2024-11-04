import 'package:flutter/material.dart';
import 'package:prediksi_nilai_siswa/views/home.dart';
import 'package:prediksi_nilai_siswa/views/input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (_) => const Home(),
        '/input' : (_) => const Input()
      },
    );
  }
}