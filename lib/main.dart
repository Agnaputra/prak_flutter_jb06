import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 🔹 Image Section
    Widget imageSection = Image.asset(
      'images/lake.jpg',
      width: 800,
      height: 400,
      fit: BoxFit.cover,
    );

    // 🔹 Title Section
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Coban Rondo Waterfall',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const SizedBox(width: 8),
          const Text('91'),
        ],
      ),
    );

    // 🔹 Button Section pakai helper
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // 🔹 Text Section (Praktikum 3 Step 1)
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Coban Rondo is a popular natural destination located in Pujon District, '
        'Malang Regency, East Java. The area is best known for its impressive '
        '84-meter-tall waterfall, which holds a local legend about a princess who '
        'became a widow. In addition to the stunning cascade, visitors can enjoy a '
        'variety of activities, including navigating the fun Labyrinth Park, trying '
        'outdoor adventures, or simply relaxing in the serene pine forest. With its '
        'combination of natural beauty and recreational facilities, Coban Rondo offers '
        'a perfect getaway for both families and adventure seekers.\n\n'
        'Agna Putra Prawira - 2341720065',
      ),
    );

    // 🔹 Body dengan ListView (Step 2)
    return MaterialApp(
      title: 'Flutter layout: Agna Putra Prawira (2341720065)',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView( //<--- add this
          children: [
            imageSection,
            titleSection,
            buttonSection,
            textSection, // <--- ditambahkan
          ],
        ),
      ),
    );
  }

  // 🔹 Helper Method untuk Button
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
