import 'package:final_project/home/controller.dart';
import 'package:flutter/material.dart';

class HomeAds extends StatelessWidget {
  final HomePageController controller;
  List<String> imagePaths = [
    'assets/images/cup1.jpg',
    'assets/images/cup1.jpg',
    'assets/images/cup1.jpg',
    'assets/images/cup1.jpg',
    'assets/images/cup1.jpg',
  ];
  HomeAds({required this.controller});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: screenWidth * 0.4, // Adjust the aspect ratio as needed
          child: PageView.builder(
            itemCount: controller.pages.length,
            controller: controller.pageController,
            onPageChanged: (page) => controller.currentPage = page,
            itemBuilder: (context, index) {
              return ValueListenableBuilder(
                valueListenable: controller.currentPageValue,
                builder: (context, page, _) {
                  return AnimatedContainer(
                    //color: Theme.of(context).cardColor,
                    duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.05,
                      vertical: controller.currentPage != index ? 18 : 8,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        imagePaths[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
        SizedBox(height: 16),
        SizedBox(
          height: 10,
          child: Center(
            child: ListView.separated(
              itemCount: controller.pages.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, __) => SizedBox(width: 10),
              itemBuilder: (context, index) {
                return ValueListenableBuilder(
                  valueListenable: controller.currentPageValue,
                  builder: (context, page, _) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 5,
                      width: controller.currentPage == index ? 50 : 10,
                      decoration: BoxDecoration(
                        color: controller.currentPage == index
                            ? Color.fromARGB(255, 1, 2, 98)
                            : Theme.of(context).focusColor,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
        SizedBox(height: 24,),
        Text("LET'S GET YOU \n ON THE ROAD",
        style: TextStyle(color: Color.fromARGB(255, 245, 197, 07),fontWeight: FontWeight.bold ))
      ],
    );
  }
}
