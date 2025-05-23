/*import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  final String categoryName;

  const ProductsView({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> productModels = _getModelsForCategory(categoryName);

    return Scaffold(
      appBar: AppBar(
        title: Text('Modelos de $categoryName'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: productModels.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final product = productModels[index];

          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 2,
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: product['image']!.isNotEmpty
                    ? Image.asset(
                        product['image']!,
                        width: 64,
                        height: 64,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.image_not_supported),
                      )
                    : Container(
                        width: 64,
                        height: 64,
                        color: Colors.grey[300],
                        child: const Icon(Icons.image_not_supported),
                      ),
              ),
              title: Text(product['name']!),
              subtitle: Text(product['description']!),
              onTap: () {
              },
            ),
          );
        },
      ),
    );
  }

  List<Map<String, String>> _getModelsForCategory(String category) {
    switch (category) {
      case 'Camisetas':
        return [
          {
            'name': 'Camiseta Clásica',
            'description': '100% algodón, disponible en varios colores.',
            'image': '',
          },
          {
            'name': 'Camiseta Deportiva',
            'description': 'Material dry-fit para entrenamientos.',
            'image': '',
          },
          {
            'name': 'Camiseta Oversize',
            'description': 'Estilo urbano, tela suave.',
            'image': '',
          },
        ];
      case 'Tazas':
        return [
          {
            'name': 'Taza Blanca',
            'description': 'Cerámica, 11 oz.',
            'image': '',
          },
          {
            'name': 'Taza con Asa de Color',
            'description': 'Asa e interior a color.',
            'image': '',
          },
          {
            'name': 'Taza Personalizada',
            'description': 'Con tu diseño favorito.',
            'image': '',
          },
        ];
      case 'Mouse Pads':
        return [
          {
            'name': 'Mouse Pad Gamer',
            'description': 'Gran tamaño, base antideslizante.',
            'image': '',
          },
          {
            'name': 'Mouse Pad Personalizado',
            'description': 'Diseño con tu foto o logo.',
            'image': '',
          },
        ];
      case 'Llaveros':
        return [
          {
            'name': 'Llavero Acrílico',
            'description': 'Personalizado con diseño a color.',
            'image': '',
          },
          {
            'name': 'Llavero Metálico',
            'description': 'Resistente y elegante.',
            'image': '',
          },
        ];
      case 'Cojines':
        return [
          {
            'name': 'Cojín Decorativo',
            'description': 'Con funda removible, 40x40 cm.',
            'image': '',
          },
          {
            'name': 'Cojín con Foto',
            'description': 'Imprime tu recuerdo favorito.',
            'image': '',
          },
        ];
      case 'Totebags':
        return [
          {
            'name': 'Totebag de Tela',
            'description': 'Reutilizable y ecológica.',
            'image': '',
          },
          {
            'name': 'Totebag Estampada',
            'description': 'Con diseño personalizado.',
            'image': '',
          },
        ];
      case 'Fundas':
        return [
          {
            'name': 'Funda para iPhone',
            'description': 'Diseño resistente y moderno.',
            'image': '',
          },
          {
            'name': 'Funda Personalizada',
            'description': 'Con tu foto o frase favorita.',
            'image': '',
          },
        ];
      case 'Fotos en piedra':
        return [
          {
            'name': 'Piedra Rectangular',
            'description': 'Impresión sobre piedra pulida.',
            'image': '',
          },
          {
            'name': 'Piedra con Soporte',
            'description': 'Incluye base para exhibición.',
            'image': '',
          },
        ];
      default:
        return [
          {
            'name': 'Modelo Estándar',
            'description': 'Modelo genérico de $category.',
            'image': '',
          },
        ];
    }
  }
}*/
