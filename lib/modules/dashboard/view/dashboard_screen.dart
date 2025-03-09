



import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_fonix/modules/dashboard/provider/dashboard_provideer.dart';
import 'package:shopping_fonix/modules/dashboard/screens/news/view/news_screen.dart';
import 'package:shopping_fonix/utils/app_exports/app_exports.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> screens = [
      HomeScreen(),
      NewsScreen(),
      Center(child: Text("Screen 3")),
      Center(child: Text("Chat Screen")),
    ];

    return Scaffold(
      body: Consumer<DashBoardProvider>(
        builder: (context, provider, _) {
          return ValueListenableBuilder<int>(
            valueListenable: provider.appIndex,
            builder: (context, index, _) {
              return IndexedStack(
                index: index,
                children: screens,
              );
            },
          );
        },
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DashBoardProvider>(context, listen: false);

    return ValueListenableBuilder<int>(
      valueListenable: provider.appIndex,
      builder: (context, selectedIndex, _) {
        return Container(
          padding:  EdgeInsets.symmetric(horizontal: w*0.05, vertical: h*0.008),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNavItem(AppImages.aboutIconSvg, 0, selectedIndex, provider),
              _buildNavItem(AppImages.icon2Svg, 1, selectedIndex, provider),
              _buildNavItem(AppImages.icon3Svg, 2, selectedIndex, provider),
              _buildNavItem(AppImages.chatIconSvg, 3, selectedIndex, provider),
            ],
          ),
        );
      },
    );
  }

  Widget _buildNavItem(String iconPath, int index, int selectedIndex, DashBoardProvider provider) {
    bool isSelected = index == selectedIndex;

    return GestureDetector(
      onTap: () => provider.updateIndex(index),
      child: Container(
        // duration: const Duration(milliseconds: 100),
        padding: EdgeInsets.all(w*0.025),
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset(
          iconPath,
          height: 22,
          width: 22,
          colorFilter: ColorFilter.mode(
            isSelected ? Colors.white : Colors.grey,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
