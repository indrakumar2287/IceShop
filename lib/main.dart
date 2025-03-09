import 'package:shopping_fonix/utils/app_exports/app_exports.dart';

GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

void main() {
  runApp(MultiProvider(providers: AppProvider.appProviders, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    statusBarHeight = MediaQuery.of(context).viewPadding.top;
    return MaterialApp(
      title: 'Shopping Fonix',
      navigatorKey: navKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
