


import 'package:shopping_fonix/modules/dashboard/screens/home/provider/home_provider.dart';
import 'package:shopping_fonix/modules/dashboard/screens/news/provider/news_provider.dart';
import 'package:shopping_fonix/utils/app_exports/app_exports.dart';
import 'package:shopping_fonix/utils/widgets/text_widget.dart';

class NewArrivalsView extends StatelessWidget {
  const NewArrivalsView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);
    return SizedBox(
      height: h * 0.25, // Adjusted height for better layout
      child: ListView.builder(
        itemCount: provider.newArrivalsList().length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final blog = provider.newArrivalsList()[index];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: w * 0.02),
            width: w * 0.35,
            child: Stack(
              clipBehavior: Clip.none, // Allows image to overflow slightly
              alignment: Alignment.topCenter,
              children: [
                // White Card Background
                Positioned(
                  top: h * 0.05, // Adjusted for perfect half-in-half-out effect
                  child: Container(
                    width: w * 0.35,
                    padding: EdgeInsets.only(top: h * 0.06), // Fine-tuned spacing
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: h * 0.025), // Fine-tuned spacing
                        TextWidget(
                          text: blog["title"]!,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                        TextWidget(
                          text: blog["description"]!,
                          fontSize: 12,
                          color: AppColors.textGrey,
                        ),
                        SizedBox(height: h * 0.02),
                      ],
                    ),
                  ),
                ),

                // Circular Image (Half inside, half outside)
                Positioned(
                  top: h * 0.0, // Adjusted so image is slightly outside
                  child: ClipOval(
                    child: Container(
                      width: w * 0.22,
                      height: w * 0.22,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        blog["image"]!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
