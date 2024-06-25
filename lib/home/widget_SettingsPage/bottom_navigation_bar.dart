import 'package:final_project/home/index.dart';
import 'package:final_project/home/index_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  BottomNavigationBarWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: Offset(0, -1),
            blurRadius: 10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          selectedFontSize: 12, // Adjust the font size
          showSelectedLabels: false, // Hide selected labels
          showUnselectedLabels: false, // Hide unselected labels
          backgroundColor: Theme.of(context)
              .scaffoldBackgroundColor, // Use your desired color
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: SvgPicture.asset(
                  'assets/icons/v1_2.svg', // Replace with your SVG icon path
                ),
              ),
              label: '', // Empty label
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NotificationPage()));
                },
                child: SvgPicture.asset(
                  'assets/icons/v2.svg', // Replace with your SVG icon path
                ),
              ),
              label: '', // Empty label
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/v3_2.svg', // Replace with your SVG icon path
              ),
              label: '', // Empty label
            ),
          ],
        ),
      ),
    );
  }
}
