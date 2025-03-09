
import 'package:shopping_fonix/modules/dashboard/screens/home/provider/home_provider.dart';
import 'package:shopping_fonix/modules/dashboard/screens/news/provider/news_provider.dart';
import 'package:shopping_fonix/utils/app_exports/app_exports.dart';
import 'package:shopping_fonix/utils/widgets/text_widget.dart';


class HomeNewsView extends StatelessWidget {
  const HomeNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    final newsProvider = Provider.of<NewsProvider>(context);
    return SizedBox(
      height: w * 0.45,
      child: ListView.builder(
        itemCount: newsProvider.newsList().length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final news = newsProvider.newsList()[index];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: w * 0.02),
            width: w * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: w * 0.4,
                    height: w * 0.25, // Adjust as needed
                    decoration: BoxDecoration(
                      color: Colors.grey[300], // Placeholder color
                    ),
                    child: Image.asset(
                      news["image"]!,
                      fit: BoxFit.cover, // Ensures image covers entire container
                      width: w * 0.4,
                      height: w * 0.25,
                    ),
                  ),
                ),
                SizedBox(height: h*0.01),
                TextWidget(
                  text: news["title"]!,
                  fontSize: 14,
                  color: AppColors.black,
                  maxLines: 2,
                ),
                Row(
                  children: [
                    Icon(Icons.calendar_month, color: AppColors.textGrey,size: 10,),
                    widthGap(w*0.01),
                    TextWidget(
                      text: news["date"]!,
                      fontSize: 10,
                      isOutFitFont: true,
                      color: AppColors.textGrey,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
