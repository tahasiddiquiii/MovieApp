import '../../../../common/constants/translation_constants.dart';
import 'tab.dart';

class MovieTabbedConstants {
  static const List<Tab> movieTabs = const [
    const Tab(index: 0, title: TranslationConstants.topRated),
    const Tab(index: 1, title: TranslationConstants.popular),
    const Tab(index: 2, title: TranslationConstants.recent),
  ];
}
