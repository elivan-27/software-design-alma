import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {'name': 'Camisetas', 'image': 'lib/assets/images/camisetas.png'},
      {'name': 'Tazas', 'image': 'lib/assets/images/taza.jpg'},
      {'name': 'Mouse Pads', 'image': 'lib/assets/images/mousepad.png'},
      {'name': 'Llaveros', 'image': 'lib/assets/images/llavero.jpg'},
      {'name': 'Cojines', 'image': 'lib/assets/images/cojin.png'},
      {'name': 'Totebags', 'image': 'lib/assets/images/totebag.jpg'},
      {'name': 'Fundas', 'image': 'lib/assets/images/funda.jpg'},
      {'name': 'Fotos en piedra', 'image': 'lib/assets/images/piedra.jpg'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        title: const Text('Categorías'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        elevation: 1,
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: categories.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final category = categories[index];
            return Material(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              elevation: 2,
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  print('Seleccionaste: ${category['name']}');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          category['image']!,
                          width: 64,
                          height: 64,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => Container(
                            width: 64,
                            height: 64,
                            color: Colors.grey[300],
                            child: const Icon(Icons.broken_image, size: 32),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          category['name']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF333333),
                          ),
                        ),
                      ),
                      const Icon(Icons.chevron_right, color: Colors.grey),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
