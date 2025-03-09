import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_fonix/modules/dashboard/screens/home/provider/home_provider.dart';
import 'package:shopping_fonix/utils/app_exports/app_exports.dart';
import 'package:shopping_fonix/utils/others/dimentions.dart';
import 'package:shopping_fonix/utils/widgets/text_widget.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);
    final PageController controller = PageController();

    return Column(
      children: [
        SizedBox(
          height: h * 0.22,
          width: w - w * 0.1,
          child: PageView.builder(
            controller: controller,
            itemCount: provider.banners.length,
            onPageChanged: (index) {
              provider.updateIndex(index);  // Update index on page change
            },
            itemBuilder: (context, index) {
              final banner = provider.banners[index];
              return Row(
                children: [
                  SizedBox(width: w * 0.08),
                  Expanded(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: w - w * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xffFF6185),
                          ),
                          margin: EdgeInsets.only(bottom: w * 0.04),
                          padding: EdgeInsets.symmetric(horizontal: w * 0.01, vertical: h * 0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Expanded(flex: 2, child: SizedBox()),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextWidget(
                                      text: banner.title,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      maxLines: 2,
                                      color: Colors.white,
                                      textAlign: TextAlign.start,
                                    ),
                                    SizedBox(height: h * 0.01),
                                    TextWidget(
                                      text: banner.subtitle,
                                      fontSize: 12,
                                      isOutFitFont: true,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(left: -w * 0.1, child: Image.asset(AppImages.platImage)),
                        Positioned(right: -w * 0.035, bottom: -w * 0.12, child: Image.asset(AppImages.fruitImage)),
                      ],
                    ),
                  ),
                  SizedBox(width: w * 0.035),
                ],
              );
            },
          ),
        ),

        // Dot Indicator
        SizedBox(height: h * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            provider.banners.length,
                (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: provider.currentIndex == index ? 20 : 8,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), // Rounded edges for long indicator
                color: provider.currentIndex == index ? Colors.red : Colors.grey,
              ),
            ),
          ),
        ),

      ],
    );
  }
}
