import 'package:flutter/widgets.dart';

class HomePageController {
  PageController pageController = PageController();

  List pages = [0, 0, 0, 0, 0];

  final ValueNotifier<int> _currentPage = ValueNotifier(0);
  int get currentPage => _currentPage.value;
  set currentPage(int value) => _currentPage.value = value;
  get currentPageValue => _currentPage;
}

