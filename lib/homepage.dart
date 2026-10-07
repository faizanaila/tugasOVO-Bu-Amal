import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';


const List<Map<String, dynamic>> menuFavorit = [
  {'judul': 'Nabung by Superbank', 'icon': Icons.savings, 'badge': 'BARU'},
  {'judul': 'Pinjaman', 'icon': Icons.volunteer_activism, 'badge': '100JT'},
  {'judul': 'Uang Elektronik', 'icon': Icons.credit_card, 'badge': 'Rp 1'},
  {'judul': 'Angsuran Kredit', 'icon': Icons.receipt_long, 'badge': null},
  {'judul': 'Pulsa/Paket Data', 'icon': Icons.phone_android, 'badge': 'PROMO'},
  {'judul': 'PLN', 'icon': Icons.bolt, 'badge': 'PROMO'},
  {'judul': 'Air PDAM', 'icon': Icons.water_drop, 'badge': null},
  {'judul': 'Internet & TV Kabel', 'icon': Icons.live_tv, 'badge': null},
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'OVO',
                  style: TextStyle(color: unguUtama, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: unguLembut,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.percent, size: 16, color: unguUtama),
                      SizedBox(width: 6),
                      Text('Promo', style: TextStyle(color: unguUtama, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [unguMuda, unguTua],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('OVO Cash', style: TextStyle(color: Colors.white70)),
                  const SizedBox(height: 4),
                  const Text('Total Saldo', style: TextStyle(color: Colors.white70, fontSize: 12)),
                  const Text(
                    'Tap untuk lihat',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _tombolAksi(context, Icons.add, 'Top Up'),
                      _tombolAksi(context, Icons.arrow_upward, 'Transfer'),
                      _tombolAksi(context, Icons.arrow_downward, 'Tarik Tunai'),
                      _tombolAksi(context, Icons.menu, 'History'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: unguLembut,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  const Icon(Icons.verified_user, color: unguUtama, size: 36),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      'Cek data kamu demi kelancaran pemakaian akun OVO kamu',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailMenuPage(judul: 'Cek Data Akun'),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: unguUtama,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text('Cek', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            const Text('Favorit', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: menuFavorit.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 12,
                crossAxisSpacing: 8,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, i) {
                final menu = menuFavorit[i];
                return GestureDetector(
                  onTap: () {
                    // Navigator.push + kirim data judul lewat constructor
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailMenuPage(judul: menu['judul']),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 26,
                            backgroundColor: unguLembut,
                            child: Icon(menu['icon'], color: unguUtama),
                          ),
                          if (menu['badge'] != null)
                            Positioned(
                              top: -6,
                              left: -6,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  menu['badge'],
                                  style: const TextStyle(color: Colors.white, fontSize: 8),
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text(
                        menu['judul'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 11),
                        maxLines: 2,
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  
  static Widget _tombolAksi(BuildContext context, IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailMenuPage(judul: label)),
        );
      },
      child: Column(
        children: [
          CircleAvatar(radius: 20, backgroundColor: Colors.white, child: Icon(icon, color: unguTua)),
          const SizedBox(height: 6),
          Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }
}