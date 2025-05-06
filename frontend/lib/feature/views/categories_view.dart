import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {
        'name': 'Camisetas',
        'image': 'lib/assets/images/camisetas.png',
      },
      {
        'name': 'Tazas',
        'image': 'lib/assets/images/taza.jpg',
      },
      {
        'name': 'Mouse Pads',
        'image': 'lib/assets/images/mousepad.png',
      },
      {
        'name': 'Llaveros',
        'image': 'lib/assets/images/llavero.jpg',
      },
      {
        'name': 'Cojines',
        'image': 'lib/assets/images/cojin.png',
      },
      {
        'name': 'Totebags',
        'image': 'lib/assets/images/totebag.jpg',
      },
      {
        'name': 'Fundas',
        'image': 'lib/assets/images/funda.jpg',
      },
      {
        'name': 'Fotos en piedra',
        'image': 'lib/assets/images/piedra.jpg',
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
                        borderRadius:
                            const BorderRadius.vertical(top: Radius.circular(16)),
                        child: Container(
                          color: Colors.grey[200],
                          child: Image.asset(
                            category['image']!,
                            fit: BoxFit.contain,
                            width: double.infinity,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.broken_image),
                          ),
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
