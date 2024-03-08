import 'package:flutter/material.dart';
import 'detail_screen.dart'; // Import DetailScreen widget

class HomeScreen extends StatelessWidget {
  final List<String> itemTitles = [
    'Resident Evil 4 Remake',
    'Starfield',
    'Diablo IV',
    'Hogwarts Legacy',
    'Zelda: Tears of Kingdom',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mengenal beberapa game populer pada tahun 2023')),
      body: ListView.builder(
        itemCount: itemTitles.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.grey[200], // Optional background color
            child: Card(
              elevation: 3.0,
              margin: EdgeInsets.all(8.0),
              child: ListTile( // Optional leading icon
                title: Text(itemTitles[index]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        itemIndex: index + 1,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
