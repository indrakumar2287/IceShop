



import 'package:shopping_fonix/modules/dashboard/screens/news/provider/news_provider.dart';
import 'package:shopping_fonix/utils/app_exports/app_exports.dart';
import 'package:shopping_fonix/utils/widgets/svg_pic.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final newsProvider = Provider.of<NewsProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("News", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.05),
        child: ListView.builder(
          itemCount: newsProvider.newsList().length ,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final news = newsProvider.newsList()[index] ;
            return Container(
              margin: EdgeInsets.only(bottom: h * 0.02), 
              padding: EdgeInsets.all(w * 0.02),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade200, blurRadius: 4, spreadRadius: 2),
                ],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                     news["image"]!,
                      width: w * 0.3,
                      height: h * 0.12,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: w * 0.04),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          news["title"]!,
                          maxLines: 2,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: h * 0.005),
                        Text(
                          news["description"]!,
                          style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: h * 0.005),
                        Row(
                          children: [
                            const Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                            SizedBox(width: w * 0.02),
                            Text(news["date"]!, style: TextStyle(fontSize: 12, color: Colors.grey)),
                            SizedBox(width: w * 0.03),
                            const Icon(Icons.access_time, size: 14, color: Colors.grey),
                            SizedBox(width: w * 0.02),
                            Text(news["time"]!, style: TextStyle(fontSize: 12, color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
