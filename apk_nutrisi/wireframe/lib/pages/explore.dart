import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {

    const ExplorePage({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Healthy Food'),
      ),
      body: ListView(
        children: [
          _buildCard('Tempe', 'Vitamin B1, B2, B6, B12', '9g', '18-20g', 'assets/tempe.jpg'),
          _buildCard('Dada Ayam', 'Vitamin B6, B12', '0g', '54g', 'assets/dada_ayam.jpg'),
          _buildCard('Paha Ayam', 'Vitamin D, B6, B12', '0g', '12.4g', 'assets/paha_ayam.jpg'),
          _buildCard('Ikan Nila', 'Vitamin B3, B12, Kalium, Fosfor', '0g', '26g', 'assets/ikan_nila.jpg'),
        ],
      ),
    );
  }

 Card _buildCard(String title, String subtitle, String carbs, String protein, String imagePath) {
    return Card(
      color: Color.fromARGB(255, 213, 219, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Image.asset(imagePath, width: 50, height: 50),
        title: Text(title),
        subtitle: Text('$subtitle\nCarbohydrate: $carbs\nProtein: $protein'),
      ),
    );
  }
}