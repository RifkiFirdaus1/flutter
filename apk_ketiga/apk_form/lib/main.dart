import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = '';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              TitleSection(
                name: 'Pengisian Formulir Data Diri',
                location: 'Sampit, Indonesia',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                    labelText: 'Nama',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                    labelText: 'Tempat, Tanggal Lahir',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                    labelText: 'Asal',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                    labelText: 'Alamat Rumah',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                    labelText: 'No.Hp',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
