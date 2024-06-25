import 'package:final_project/home/widget_HomePage/product_card.dart';
import 'package:flutter/material.dart';

class ProductsList extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  const ProductsList({
    Key? key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(height: screenWidth * 0.002),
        SizedBox(
          height: screenWidth * 0.66,
          child: ListView.separated(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.fromLTRB(
              screenWidth * 0.045,
              0,
              0,
              screenWidth * 0.035,
            ),
            separatorBuilder: (_, __) => SizedBox(width: screenWidth * 0.03),
            itemBuilder: (context, index) {
              final productData = products[index];
              return ProductCard(
                imageAsset: productData['imageAsset'],
                name: productData['name'],
                price: productData['price'],
              );
            },
          ),
        ),
      ],
    );
  }
}
