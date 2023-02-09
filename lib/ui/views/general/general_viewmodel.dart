import 'package:stacked/stacked.dart';

class GeneralViewModel extends IndexTrackingViewModel {
  // int currentNavigationIndex = 0;

  void onNavigationIconTaped(int index) {
    // currentNavigationIndex = index;
    setIndex(index);
    rebuildUi();
  }
}
