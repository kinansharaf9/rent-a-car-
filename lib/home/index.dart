import 'package:final_project/home/widget_HomePage/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:final_project/home/widget_HomePage/appbar.dart';
import 'package:final_project/home/widget_HomePage/slider.dart';
import 'controller.dart';
import 'package:final_project/home/widget_HomePage/products_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageController controller = HomePageController();

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: HomeAppBar(),
      body: ListView(
        padding: EdgeInsets.only(top: 16),
        children: [
          HomeAds(controller: controller),
          const SizedBox(height: 24),
          ProductsList(
            products: [
              {
                'imageAsset': 'assets/images/ice2.png',
                'name': 'BMW 750',
                'price': '500\nAED',
              },
              {
                      'imageAsset': 'assets/images/ice2.png',
                'name': 'BMW 750',
                'price': '500\nAED',
              },

              // Add more product data as needed
            ],
          ),
          ProductsList(
            products: [
              {
                 'imageAsset': 'assets/images/ice2.png',
                'name': 'BMW 750',
                'price': '500\nAED',
              },
              {
                'imageAsset': 'assets/images/ice2.png',
                'name': 'BMW 750',
                'price': '500\nAED',
              },
              // Add more product data as needed
            ],
          ),
          ProductsList(
            products: [
              {
                'imageAsset': 'assets/images/ice2.png',
                'name': 'BMW 750',
                'price': '500\nAED',
              },
              {
                'imageAsset': 'assets/images/ice2.png',
                'name': 'BMW 750',
                'price': '500\nAED',
              },
              // Add more product data as needed
            ],
          ),
          ProductsList(
            products: [
              {
                 'imageAsset': 'assets/images/ice2.png',
                'name': 'BMW 750',
                'price': '500\nAED',
              },
              {
                'imageAsset': 'assets/images/ice2.png',
                'name': 'BMW 750',
                'price': '500\nAED',
              },
              // Add more product data as needed
            ],
          ),
          ProductsList(
            products: [
              {
                'imageAsset': 'assets/images/ice2.png',
                'name': 'BMW 750',
                'price': '500\nAED',
              },
              {
                 'imageAsset': 'assets/images/ice2.png',
                'name': 'BMW 750',
                'price': '500\nAED',
              },
              // Add more product data as needed
            ],
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
