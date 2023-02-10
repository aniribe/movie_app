import 'package:stacked/stacked.dart';

class GeneralViewModel extends IndexTrackingViewModel {
  void onNavigationIconTaped(int index) {
    setIndex(index);
    rebuildUi();
  }
}
