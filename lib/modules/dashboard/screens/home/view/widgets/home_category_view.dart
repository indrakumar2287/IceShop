
import 'package:shopping_fonix/modules/dashboard/screens/home/provider/home_provider.dart';
import 'package:shopping_fonix/utils/app_exports/app_exports.dart';
import 'package:shopping_fonix/utils/widgets/text_widget.dart';

class HomeCategoryView extends StatelessWidget {
  const HomeCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final  provider = Provider.of<HomeProvider>(context, listen: false);
    return SizedBox(
      width: w,
      height: h*0.055,
      child: ListView.builder(
        itemCount: provider.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
          final category = provider.categories[index];
        return Container(
          margin: EdgeInsets.symmetric(horizontal: w*0.02),
          padding: EdgeInsets.symmetric(horizontal: w*0.04, vertical: w*0.02),
          width: w*0.3,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
          ),
          child: Center(
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(category.image),
                TextWidget(text: category.title,
                  fontSize: 16,
                  isOutFitFont: true,
                  color: AppColors.textGrey,
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
