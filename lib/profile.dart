import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text('Profile', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black12),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundColor: unguLembut,
                    backgroundImage: AssetImage('assets/fotonini1.jpeg'),
                  ),
                  const SizedBox(width: 14),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Faiza Naila Azizah', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        SizedBox(height: 4),
                        Text('0857-5573-4990', style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                  ),
                  const Text('Ubah', style: TextStyle(color: unguUtama, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 12),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailMenuPage(judul: 'Loyalty Code'),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black12),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.qr_code_2, color: Colors.black87),
                    SizedBox(width: 10),
                    Text('Loyalty Code', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Text('Akun', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailMenuPage(judul: 'OVO Premier'),
                  ),
                );
              },
              child: ListTile(
                leading: const Icon(Icons.verified_user_outlined, color: unguUtama),
                title: const Text('OVO Premier'),
                trailing: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(color: unguUtama, borderRadius: BorderRadius.circular(20)),
                  child: const Text('Upgrade', style: TextStyle(color: Colors.white, fontSize: 12)),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailMenuPage(judul: 'OVO Points'),
                  ),
                );
              },
              child: const ListTile(
                leading: Icon(Icons.monetization_on_outlined, color: Colors.black87),
                title: Text('OVO Points'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailMenuPage(judul: 'OVO Stamp'),
                  ),
                );
              },
              child: const ListTile(
                leading: Icon(Icons.star_border, color: Colors.black87),
                title: Text('OVO Stamp'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailMenuPage(judul: 'Aplikasi Terhubung'),
                  ),
                );
              },
              child: ListTile(
                leading: const Icon(Icons.link, color: Colors.black87),
                title: const Text('Aplikasi Terhubung'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10)),
                      child: const Text('NEW', style: TextStyle(color: Colors.white, fontSize: 10)),
                    ),
                    const SizedBox(width: 6),
                    const Icon(Icons.chevron_right),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            const Text('Bantuan', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailMenuPage(judul: 'Pusat Bantuan'),
                  ),
                );
              },
              child: const ListTile(
                leading: Icon(Icons.help_outline, color: Colors.black87),
                title: Text('Pusat Bantuan'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            const SizedBox(height: 16),

            const Text('Keamanan', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}