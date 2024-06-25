import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuantityCard extends StatefulWidget {
  //final String text;
  //final TextStyle textStyle;
  final double price; // Change the price type to double
  final int initialQuantity; // Initial quantity

  const QuantityCard({
    //required this.text,
    //required this.textStyle,
    required this.price,
    required this.initialQuantity,
    Key? key,
  }) : super(key: key);

  @override
  _QuantityCardState createState() => _QuantityCardState();
}

class _QuantityCardState extends State<QuantityCard> {
  late int quantity;
  double totalPrice = 0.0; // Initialize total price

  @override
  void initState() {
    super.initState();
    quantity = widget.initialQuantity;
    calculateTotalPrice(); // Calculate the initial total price
  }

  void calculateTotalPrice() {
    setState(() {
      totalPrice = widget.price * quantity;
    });
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
        calculateTotalPrice(); // Recalculate total price when quantity changes
      });
    }
  }

  void increaseQuantity() {
    setState(() {
      quantity++;
      calculateTotalPrice(); // Recalculate total price when quantity changes
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.9,
      height: screenHeight * 0.09,
      padding: EdgeInsets.fromLTRB(25, 10, 12, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: Offset(0, 2),
            blurRadius: 15,
          ),
        ],
        color: Theme.of(context).canvasColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Text(
            '${totalPrice.toStringAsFixed(2)} S.P', // Display the total price on the right
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  decreaseQuantity(); // Decrease the quantity when clicking the left SVG
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                        'assets/icons/sub.svg'), // Replace with your left SVG asset
                  ),
                ),
              ),
              SizedBox(width: 10), // Add spacing between SVGs and quantity
              Text(
                quantity.toString(), // Display the quantity in the middle
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(width: 10), // Add spacing between SVGs and quantity
              InkWell(
                onTap: () {
                  increaseQuantity(); // Increase the quantity when clicking the right SVG
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                        'assets/icons/add.svg'), // Replace with your right SVG asset
                  ),
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
