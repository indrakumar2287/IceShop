// screens/home_screen.dart
import 'package:shopping_fonix/modules/dashboard/screens/home/provider/home_provider.dart';
import 'package:shopping_fonix/modules/dashboard/screens/home/view/widgets/banner_widget.dart';
import 'package:shopping_fonix/modules/dashboard/screens/home/view/widgets/home_app_bar.dart';
import 'package:shopping_fonix/modules/dashboard/screens/home/view/widgets/home_blog_view.dart';
import 'package:shopping_fonix/modules/dashboard/screens/home/view/widgets/home_category_view.dart';
import 'package:shopping_fonix/modules/dashboard/screens/home/view/widgets/home_news_widget.dart';
import 'package:shopping_fonix/modules/dashboard/screens/home/view/widgets/home_searchbar.dart';
import 'package:shopping_fonix/modules/dashboard/screens/home/view/widgets/new_arrivals_view.dart';
import 'package:shopping_fonix/utils/app_exports/app_exports.dart';
import 'package:shopping_fonix/utils/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.03),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomAppBar(),
                // SizedBox(height: h * 0.02),
                const HomeSearchBar(),
                // SizedBox(height: h * 0.02),
                const BannerWidget(),
                titleTextWidget(title: 'Categories'),
                const HomeCategoryView(),
                titleTextWidget(title: 'Latest News'),
                const HomeNewsView(),
                titleTextWidget(title: 'Latest Blogs'),

                const HomeBlogView(),
                titleTextWidget(title: 'New Arrivals'),
                const NewArrivalsView(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget titleTextWidget({String title = ""}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: h * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
            text: title,
            color: Colors.black,
            fontSize: 20,
          ),
          TextWidget(
            text: "See More",
            isOutFitFont: true,
            color: Color(0xff747688),
            fontSize: 14,
          ),
        ],
      ),
    );
  }
}
