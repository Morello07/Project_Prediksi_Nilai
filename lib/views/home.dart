import 'package:flutter/material.dart';
import 'package:prediksi_nilai_siswa/widgets/bottom.dart';
import 'package:prediksi_nilai_siswa/widgets/header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: 'Predikat Siswa'), 
      body: Container(
        padding: const EdgeInsets.only(left: 10, top: 10),
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.only(left: 10, right: 10),
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/input');
          },
          child: const Text(
            "Input Nilai",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
      bottomNavigationBar: MenuBottom(0),
    );
  }
}
