import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مدرسة زهرة المدائن'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('سلة المشتريات فارغة حالياً')),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Credits Section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12.0),
            color: Theme.of(context).colorScheme.primaryContainer,
            child: const Column(
              children: [
                Text(
                  'المصمم: زناتي عبدالسلام العبدلي',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'تحت إشراف المديرة: سليمه',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          // Product Grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: dummyProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (ctx, i) => ProductItem(product: dummyProducts[i]),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            product.title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_cart_checkout),
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {
               ScaffoldMessenger.of(context).hideCurrentSnackBar();
               ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('تمت إضافة ${product.title} للسلة')),
              );
            },
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.routeName,
              arguments: product.id,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Colors.grey[300],
                child: const Icon(Icons.broken_image, size: 50),
              );
            },
          ),
        ),
      ),
    );
  }
}
