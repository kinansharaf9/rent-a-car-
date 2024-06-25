import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String firstText;
  final String time;
  final String content;

  const NotificationCard({
    Key? key,
    required this.firstText,
    required this.time,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: screenHeight *
          0.14, // Set the card's height as 10% of the screen height
      margin: EdgeInsets.only(bottom: 16), // Add margin for spacing
      child: Stack(
        children: [
          Positioned(
            left: -1,
            top: 0,
            bottom: 0,
            child: Container(
              width: screenWidth * 0.05,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor, // Desired border color
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.018, // Adjust the position
            top: 0,
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).colorScheme.background,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            firstText,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                      Text(
                        time,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                  SizedBox(height: 11),
                  Text(
                    content,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
