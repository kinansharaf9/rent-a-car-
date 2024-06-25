import 'package:final_project/home/widget_Product_page/order_card.dart';
import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  final List<Map<String, dynamic>> orders;

  const OrderList({
    Key? key,
    required this.orders,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: orders.map((order) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: OrderCard(
            text: order['text'],
            textStyle: order['textStyle'],
            useCheckbox: order['useCheckbox'], // Pass the parameter
          ),
        );
      }).toList(),
    );
  }
}
