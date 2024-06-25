import 'package:final_project/home/index_4.dart';
import 'package:final_project/home/index_5.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String price;

  const ProductCard({
    Key? key,
    required this.imageAsset,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        // Navigate to a new page when the card is tapped
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductPage(
            ),
          ),
        );
      },
      child: Container(
        width: screenWidth * 0.44,
        // Adjust the width as needed
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color:Color.fromARGB(255, 1, 2, 98),
              // Colors.black.withOpacity(0.25),
              offset: Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageAsset,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Positioned.fill(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment(0, -0.5), // Adjust the gradient direction
                    colors: [
                      Color.fromARGB(255, 245, 197, 07).withOpacity(0.3),
                      Color.fromARGB(255, 245, 197, 07).withOpacity(0.1),
                      //Colors.white.withOpacity(1), // Starting with high opacity
                      //Colors.white.withOpacity(0.1), // Mid-level opacity
                      Colors
                          .transparent, // Fully transparent towards the middle
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(
                      screenWidth * 0.02), // Adjust the padding as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment:
                        MainAxisAlignment.end, // Align content to the bottom
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(price,
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
