
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_fonix/utils/app_exports/app_exports.dart';



class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: h * 0.02),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: h * 0.06,
        ),
        child: Row(
          children: [
            // Search Bar
            Expanded(
              child: Container(
                height: h * 0.06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(width: w * 0.04),
                    const Icon(Icons.search, color: AppColors.textGrey, size: 24),
                    SizedBox(width: w * 0.02),
                     Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search.....",
                          hintStyle: GoogleFonts.outfit(
                            color: AppColors.textGrey,
                            fontSize: 16,
                          ),
                          border: InputBorder.none, // Removes default underline
                        ),
                        style: GoogleFonts.outfit(
                          fontSize: 16,
                          color: AppColors.textGrey
                          ,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: w * 0.03),

            // Settings Icon Button
            Container(
              height: h * 0.06,
              width: h * 0.06,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.tune, // Filter/Settings icon
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
