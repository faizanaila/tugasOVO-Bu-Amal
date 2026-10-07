import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/profile.dart';


// Warna bertema OVO
const unguTua = Color(0xFF3B2A86);
const unguUtama = Color(0xFF5B2A86);
const unguMuda = Color(0xFF8E5FD1);
const unguLembut = Color(0xFFEDE7FB);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OVO Clone',
      theme: ThemeData(colorSchemeSeed: unguUtama),
      home: const MainNavigationPage(),
    );
  }
}

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(), 
    const ProfilePage(), 
  ];

  void _onItemTapped(int index) {
    if (index == 0) {
      setState(() => _selectedIndex = 0);
    } else if (index == 4) {
      setState(() => _selectedIndex = 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex == 0 ? 0 : 4,
        onTap: _onItemTapped,
        selectedItemColor: unguUtama,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.payments), label: 'Finance'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'Pay'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

// Halaman Detail: menerima data judul lewat Constructor
class DetailMenuPage extends StatelessWidget {
  final String judul;

  const DetailMenuPage({super.key, required this.judul});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(judul),
        backgroundColor: unguUtama,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('Ini halaman $judul', style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}