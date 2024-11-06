import 'package:flutter/material.dart';
import 'home_page.dart';
import 'akun_page.dart';
import 'login.dart'; // Pastikan untuk mengimpor halaman login

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    AkunPage(),
    // Placeholder untuk LogoutPage
    // LogoutPage() dihapus, karena kita akan langsung pergi ke LoginScreen
  ];

  void _onTabTapped(int index) {
    setState(() {
      if (index == 2) {
        // Jika tab yang dipilih adalah Logout, alihkan ke LoginScreen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      } else {
        // Jika tab lain dipilih, perbarui indeks saat ini
        _currentIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentIndex < 2 ? _pages[_currentIndex] : Container(), // Hanya menampilkan halaman yang relevan
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}
