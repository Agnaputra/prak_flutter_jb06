import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/item.dart';
import '../widgets/itemcard.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Apple',
      price: 10000,
      stock: 20,
      rating: 4.5,
      image: 'assets/images/apple.png',
    ),
    Item(
      name: 'Banana',
      price: 5000,
      stock: 30,
      rating: 4.0,
      image: 'assets/images/banana.png',
    ),
    Item(
      name: 'Orange',
      price: 8000,
      stock: 15,
      rating: 4.2,
      image: 'assets/images/orange.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.8,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ItemCard(
                  item: item,
                  onTap: () {
                    // ✅ Gunakan push agar bisa kembali tanpa error
                    context.push('/item', extra: item);
                  },
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Agna Putra Prawira | 2341720065',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
