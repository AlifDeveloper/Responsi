import 'package:flutter/material.dart';

class LupaPassword extends StatefulWidget {
  @override
  _LupaPasswordState createState() => _LupaPasswordState();
}

class _LupaPasswordState extends State<LupaPassword> {
  final _usernameController = TextEditingController(); // Controller untuk username
  // Proses ketika tombol kirim ditekan
  void _submit() {
    // Logika pemulihan password
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Reset Password'),
        content: Text('Link untuk reset password telah dikirim ke email Anda.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo di atas
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 50),
              child: Column(
                children: [
                  Image.asset(
                    'assets/image.png',
                    height: 100,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Lupa Password',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),

                  Text(
                  'Masukkan email anda dan tunggu kode etik akan dikirimkan',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Masukkan Email', style: TextStyle(fontSize: 16)),
                SizedBox(height: 4),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                  ),
                ),
                SizedBox(height: 8), // Jarak antara field dan pesan tambahan
                
    
              ],
            ),
            SizedBox(height: 24),

            Center(
              child: ElevatedButton(
                onPressed: _submit,
                child: Text(
                  'Kirim',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}