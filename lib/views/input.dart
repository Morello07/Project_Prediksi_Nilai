import 'package:flutter/material.dart';
import 'package:prediksi_nilai_siswa/controllers/predikat.dart';
import 'package:prediksi_nilai_siswa/widgets/bottom.dart';
import 'package:prediksi_nilai_siswa/widgets/header.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final _nilaiController = TextEditingController();
  final _predikatControl = PredikatControl();
  String _predikat = '';

  void _hitungPredikat() {
    final nilai = int.tryParse(_nilaiController.text) ?? -1;
    setState(() => _predikat = _predikatControl.getPredikat(nilai));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: 'Predikat Siswa'), 
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Masukkan nilai siswa", style: TextStyle(color: Colors.grey, fontSize: 18)),
            SizedBox(height: 15),
            TextField(
              controller: _nilaiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _hitungPredikat,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                foregroundColor: Colors.white,
              ),
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Predikat siswa",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text('$_predikat', 
              style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.bold),
                ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MenuBottom(1),
    );
    
  }
}
