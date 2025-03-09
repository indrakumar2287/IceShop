

import '../../../utils/app_exports/app_exports.dart';


class DashBoardProvider extends ChangeNotifier {
  final ValueNotifier<int> appIndex = ValueNotifier<int>(0);

  void updateIndex(int newIndex) {
    appIndex.value = newIndex;
  }
}
