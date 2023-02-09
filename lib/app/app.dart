import 'package:movie_app/services/movie_details_service.dart';
import 'package:movie_app/ui/views/general/general_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: GeneralView, initial: true),

    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: MovieDetailsService),
    // @stacked-service
  ],
)
class App {}
