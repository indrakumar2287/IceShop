import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shopping_fonix/modules/dashboard/provider/dashboard_provideer.dart';
import 'package:shopping_fonix/modules/dashboard/screens/home/provider/home_provider.dart';
import 'package:shopping_fonix/modules/dashboard/screens/news/provider/news_provider.dart';

class AppProvider {

  static final List<SingleChildWidget> appProviders = [
    ChangeNotifierProvider<HomeProvider>(create: (_) => HomeProvider()),
    ChangeNotifierProvider<DashBoardProvider>(create: (_) => DashBoardProvider()),
    ChangeNotifierProvider<NewsProvider>(create: (_) => NewsProvider()),
 ];
}
