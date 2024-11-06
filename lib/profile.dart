import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView( // Tambahkan SingleChildScrollView di sini
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Card untuk foto, nama lengkap, dan nama universitas
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // Foto
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/foto_profil.png'), // Ubah path gambar sesuai kebutuhan
                      ),
                      SizedBox(height: 10),
                      // Nama lengkap
                      Text(
                        'La Ode Alif Nazario',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      // Nama universitas
                      Text(
                        'Universitas Teknologi Yogyakarta',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Informasi Email, Nama, Nomor Telepon, dan Alamat
              _buildInfoRow(Icons.email, 'Email', 'alifn7058@gmail.com'),
              _buildInfoRow(Icons.person, 'Nama', 'La Ode Alif Nazario'),
              _buildInfoRow(Icons.phone, 'Nomor Telepon', '+6282259095544'),
              _buildInfoRow(Icons.location_on, 'Alamat', 'Selokan Mataram'),
              SizedBox(height: 20), // Tambahkan jarak di bawah informasi
              // Tombol Ubah Profil
              SizedBox(
                width: 150, // Lebar tombol tidak terlalu panjang
                child: ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Warna biru untuk tombol
                  ),
                  child: Text(
                    'Ubah Profil',
                    style: TextStyle(color: Colors.white), // Teks putih
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membangun baris informasi
  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              Text(
                value,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
