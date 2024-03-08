import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int itemIndex;

  DetailScreen({required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    String content = getContent(itemIndex);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Detail'),
            SizedBox(width: 5),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                content,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getContent(int index) {
    switch (index) {
      case 1:
        return 'Resident Evil 4 Remake telah menjadi sorotan dalam dunia gaming, menyajikan pengalaman horor yang memikat dan mencuri hati para penggemar. Pada 24 Maret 2023, game ini secara resmi merajai PlayStation 4, PlayStation 5, PC, dan Xbox Series X/S. Dalam dua minggu pertama setelah perilisannya, Resident Evil 4 Remake berhasil menjual empat juta unit, mencatatkan namanya sebagai salah satu game terlaris di 2023. Angka ini terus melonjak hingga pada pertengahan tahun. Total penjualannya mencapai lima juta unit dan langsung menduduki posisi kelima game terlaris di 2023.';
      case 2:
        return 'Posisi ke empat game terlaris di 2023 ditempati oleh petualangan luar angkasa ambisius keluaran Bethesda Game Studios yaitu Starfield.Dengan pencapaian luar biasa, permainan ini berhasil menarik perhatian lebih dari 10 juta pemain dalam waktu singkat setelah peluncurannya. Meskipun angka tersebut mungkin terpengaruh oleh keberadaan Xbox Game Pass, namun Starfield tetap menduduki penjualan game terbaik ke 4 dan mengalahkan para pesaingnya.';
      case 3:
        return 'Diablo IV hadir pada 5 Juni 2023 dan memegang posisi ke-3 sebagai game terlaris di 2023. Hadir untuk berbagai platform, termasuk PlayStation 4, PlayStation 5, hingga PC, permainan ini segera mencuri perhatian para gamer dengan keseruannya yang menggemparkan. Pengumuman di Blizzcon 2019 dan trailer spektakuler pada The Game Awards 2022 memanaskan antusiasme para penggemar.';
      case 4:
        return 'Meski awalnya diwarnai perdebatan dan kontroversi, Hogwarts Legacy akhirnya menemukan sorotan positif yang memunculkan kisah sukses gemilang dan menduduki posisi kedua game terlaris di 2023. Dengan ketersediaannya hanya untuk konsol generasi terbaru pada peluncurannya, permainan ini mampu mengumpulkan lebih dari 1 miliar dari penjualan ritel, menjadikannya sebagai game terlaris di kuartal pertama 2023.';
      case 5:
        return 'Puncak takhta game terlaris di 2023 ditempati oleh Zelda: Tears of the Kingdom yang jadi perbincangan hangat sepanjang tahun ini. Menyusul kesuksesan besar The Legend of Zelda: Breath of the Wild pada 2017, Tears of the Kingdom hadir dengan janji memikat para gamer dengan petualangan epik di dunia Hyrule. ';
      default:
        return 'Detail'; // Default case
    }
  }
}