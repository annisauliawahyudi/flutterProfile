import 'package:flutter/material.dart';
import 'profile_screen.dart'; // Import halaman ProfileScreen

class DataDiriForm extends StatefulWidget {
  const DataDiriForm({super.key});

  @override
  _DataDiriFormState createState() => _DataDiriFormState();
}

class _DataDiriFormState extends State<DataDiriForm> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _sekolahController = TextEditingController();

  void _submitData() {
    if (_namaController.text.isEmpty || _sekolahController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Harap isi semua data.')),
      );
    } else {
      // Arahkan ke halaman ProfileScreen dengan data yang diinput
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(
            nama: _namaController.text,
            sekolah: _sekolahController.text,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Isi Data Diri'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _sekolahController,
              decoration: const InputDecoration(
                labelText: 'Sekolah',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitData,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
