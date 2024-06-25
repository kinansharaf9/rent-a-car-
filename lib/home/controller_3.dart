import 'package:flutter/foundation.dart';

class NavigationController {
  final ValueNotifier<bool> shouldNavigate = ValueNotifier<bool>(false);

  void navigateToAnotherPage() {
    shouldNavigate.value = true;
  }
}
