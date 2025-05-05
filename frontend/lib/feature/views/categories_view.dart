import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {
        'name': 'Camisetas',
        'image': '',
      },
      {
        'name': 'Tazas',
        'image': '',
      },
      {
        'name': 'Mouse Pads',
        'image': '',
      },
      {
        'name': 'Llaveros',
        'image': '',
      },
      {
        'name': 'Cojines',
        'image': '',
      },
      {
        'name': 'Totebags',
        'image': '',
      },
      {
        'name': 'Fundas',
        'image': '',
      },
      {
        'name': '',
        'image': '',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorías'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 3 / 2,
          children: categories.map((category) {
            return GestureDetector(
              onTap: () {
                // Acción al tocar la categoría
                print('Seleccionaste: ${category['name']}');
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                        child: Image.asset(
                          category['image']!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        category['name']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
