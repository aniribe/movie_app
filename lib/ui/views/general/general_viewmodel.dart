import 'package:stacked/stacked.dart';

class GeneralViewModel extends BaseViewModel {
  int currentNavigationIndex = 0;

  void onNavigationIconTaped(int index) {
    currentNavigationIndex = index;
    rebuildUi();
  }
}