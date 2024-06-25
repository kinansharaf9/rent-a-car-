import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class ProductPageController {
  PageController pageController = PageController();

  List pages = [0, 0, 0, 0, 0];

  final ValueNotifier<int> _currentPage = ValueNotifier(0);
  int get currentPage => _currentPage.value;
  set currentPage(int value) => _currentPage.value = value;
  get currentPageValue => _currentPage;

  final ValueNotifier<bool> _showButtons = ValueNotifier(false);
  bool get showButtons => _showButtons.value;
  set showButtons(bool value) => _showButtons.value = value;
  ValueNotifier<bool> get showButtonsValue => _showButtons;
}

class TextVisibilityController {
  final ValueNotifier<bool> showFullText = ValueNotifier<bool>(false);

  void toggleShowFullText() {
    showFullText.value = !showFullText.value;
    print("Show Full Text: ${showFullText.value}");
  }

  void dispose() {
    showFullText.dispose();
  }
}
