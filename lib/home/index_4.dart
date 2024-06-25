import 'package:final_project/home/controller_4.dart';
import 'package:final_project/home/widget_Product_page/order_list.dart';
import 'package:final_project/home/widget_Product_page/quantity_card.dart'; // Import QuantityCard
import 'package:final_project/home/widget_Product_page/slider.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final ProductPageController controller = ProductPageController();
    final TextVisibilityController textVisibilityController =
        TextVisibilityController(); // Added this line

    // Define a list of products with their quantities
    final List<Map<String, dynamic>> products = [
      {
        //'text': 'Product 1',
        //'textStyle': Theme.of(context).textTheme.bodySmall,
        'price': 30999.0, // Replace with your price value (double)
        'quantity': 1, // Replace with your quantity value (int)
      },
    
      // Add more products as needed
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        padding: EdgeInsets.only(top: 16),
        children: [
          ProductAds(
            controller: controller,
            textVisibilityController: textVisibilityController,
          ),
          OrderList(
            orders: [
              {
                'text': 'Flavors',
                'textStyle': Theme.of(context).textTheme.labelMedium,
                'useCheckbox': false, // Use radio buttons
              },
              {
                'text': 'Additions',
                'textStyle': Theme.of(context).textTheme.labelMedium,
                'useCheckbox': true, // Use checkboxes
              },
            ],
          ),
          SizedBox(height: 45,),
          Column(
            children: products.map((product) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: QuantityCard(
                  //text: product['text'],
                  //textStyle: product['textStyle'],
                  price: product['price'],
                  initialQuantity: product['quantity'],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
