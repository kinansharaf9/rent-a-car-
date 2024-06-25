import 'package:final_project/home/widget_Product_page/quantity_card.dart';
import 'package:flutter/material.dart';

class QuantityList extends StatelessWidget {
  final List<Map<String, dynamic>> quantities;

  const QuantityList({
    Key? key,
    required this.quantities,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: quantities.map((quantity) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: QuantityCard(
            //text: quantity['text'],
            //textStyle: quantity['textStyle'],
            price: double.parse(quantity['price']), // Convert price to double
            initialQuantity: int.parse(quantity['quantity']), // Convert quantity to int
          ),
        );
      }).toList(),
    );
  }
}
