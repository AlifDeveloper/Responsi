import 'package:flutter/material.dart';

class AkunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                        backgroundImage: AssetImage('assets/foto_profil.png'), // Sesuaikan path gambar
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
              // Menu Kelola Akun, Notifikasi, Privacy Policy, dan Terms of Service
              _buildMenuItem(Icons.account_circle, 'Kelola Akun', context),
              _buildMenuItem(Icons.notifications, 'Notifikasi', context),
              _buildMenuItem(Icons.privacy_tip, 'Privacy Policy', context),
              _buildMenuItem(Icons.article, 'Terms of Service', context),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membangun setiap item menu
  Widget _buildMenuItem(IconData icon, String title, BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title, style: TextStyle(fontSize: 16)),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
      onTap: () {
        // Tambahkan navigasi atau aksi saat item menu ditekan
        print('$title ditekan');
      },
    );
  }
}
