import '../../../../common/constants/translation_constants.dart';
import 'tab.dart';

class MovieTabbedConstants {
  static const List<Tab> movieTabs = [
    Tab(index: 0, title: TranslationConstants.topRated),
    Tab(index: 1, title: TranslationConstants.popular),
    Tab(index: 2, title: TranslationConstants.recent),
  ];
}
