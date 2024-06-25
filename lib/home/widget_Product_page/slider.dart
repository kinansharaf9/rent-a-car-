import 'package:final_project/home/controller_4.dart';
import 'package:final_project/home/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductAds extends StatelessWidget {
  final ProductPageController controller;
  final TextVisibilityController textVisibilityController;
  final List<String> imagePaths = [
    'assets/images/ice2.png',
    'assets/images/ice2.png',
    'assets/images/ice2.png',
    'assets/images/cup1.jpg',
    'assets/images/cup1.jpg',
  ];

  ProductAds({
    required this.controller,
    required this.textVisibilityController,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: screenWidth * 0.55,
              child: PageView.builder(
                itemCount: controller.pages.length,
                controller: controller.pageController,
                onPageChanged: (page) => controller.currentPage = page,
                itemBuilder: (context, index) {
                  return ValueListenableBuilder(
                    valueListenable: controller.currentPageValue,
                    builder: (context, page, _) {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(
                          vertical: controller.currentPage != index ? 18 : 8,
                        ),
                        child: ClipRRect(
                          child: Image.asset(
                            imagePaths[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Positioned(
              top: 18,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  // Navigate to the other page here
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        HomePage(), // Replace with your other page
                  ));
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white38,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(0, 2),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/back_arrow_icon.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              child: SizedBox(
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
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).colorScheme.background,
                              borderRadius: BorderRadius.circular(3),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(bottom: 15, top: 15, left: 16, right: 16),
          height: screenWidth * 0.1,
          width: screenWidth * 0.9,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ice cream cup",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Row(
                children: [
                  Text(
                    "4.4",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(width: 10),
                  SvgPicture.asset(
                    'assets/icons/star.svg',
                    width: 22,
                    height: 22,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: screenWidth * 0.9,
          height: 120,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English...",
                maxLines:
                    textVisibilityController.showFullText.value ? null : 5,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(height: 1.15),
              ),
              GestureDetector(
                onTap: () {
                  textVisibilityController.toggleShowFullText();
                },
                child: Text(
                    textVisibilityController.showFullText.value
                        ? "See less"
                        : "See more",
                    style: Theme.of(context).textTheme.labelLarge),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
