
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_fonix/utils/app_exports/app_exports.dart';


class HomeProvider extends ChangeNotifier {

  int currentIndex = 0;  // Track active banner

  void updateIndex(int index) {
    currentIndex = index;
    notifyListeners();  // Update UI
  }


  final List<BannerModel> banners = [
    BannerModel(
      image: AppImages.categoryImage1,
      title: "Assorted Scooped Ice Cream",
      subtitle: "Combo of 6 Different Scoops",
    ),
    BannerModel(
      image: AppImages.categoryImage2,
      title: "Cones",
      subtitle: "Rich & Creamy Chocolate Flavor",
    ),
  ];

  final List<CategoryModel> categories = [
    CategoryModel(
      image: AppImages.categoryImage1,
      title: "Cones",
      subtitle: "",
    ),
    CategoryModel(
      image: AppImages.categoryImage2,
      title: "Cops",
      subtitle: "",
    ),
    CategoryModel(
      image: AppImages.categoryImage1,
      title: "Cones",
      subtitle: "",
    ),
    CategoryModel(
      image: AppImages.categoryImage2,
      title: "Cops",
      subtitle: "",
    ),
    CategoryModel(
      image: AppImages.categoryImage1,
      title: "Cones",
      subtitle: "",
    ),
    CategoryModel(
      image: AppImages.categoryImage2,
      title: "Cops",
      subtitle: "",
    ),
  ];

  List<Map<String, String>> blogList() => [
    {
      "image": AppImages.blog1Image1,
      "title": "Ice-cream parlours facing a meltdown over 18% GST levy",
      "description": "Ice cream is a frozen dessert that is made from that is made from",
      "date": "12-10-2023",
      "time": "12:00"
    },
    {
      "image": AppImages.blogImage2,
      "title": "Ice-cream parlours facing a meltdown over 18% GST levy",
      "description": "Ice cream is a frozen dessert that is made from that is made from",
      "date": "12-10-2023",
      "time": "12:00"
    },
    {
      "image": AppImages.blog1Image1,
      "title": "Ice-cream parlours facing a meltdown over 18% GST levy",
      "description": "Ice cream is a frozen dessert that is made from that is made from",
      "date": "12-10-2023",
      "time": "12:00"
    },
    {
      "image": AppImages.blogImage2,
      "title": "Ice-cream parlours facing a meltdown over 18% GST levy",
      "description": "Ice cream is a frozen dessert that is made from that is made from",
      "date": "12-10-2023",
      "time": "12:00"
    },
    {
      "image": AppImages.blog1Image1,
      "title": "Ice-cream parlours facing a meltdown over 18% GST levy",
      "description": "Ice cream is a frozen dessert that is made from that is made from",
      "date": "12-10-2023",
      "time": "12:00"
    },
    {
      "image": AppImages.blogImage2,
      "title": "Ice-cream parlours facing a meltdown over 18% GST levy",
      "description": "Ice cream is a frozen dessert that is made from that is made from",
      "date": "12-10-2023",
      "time": "12:00"
    },
  ];

  List<Map<String, String>> newArrivalsList() => [
    {
      "image": AppImages.newArrivalImage1,
      "title": "Pistachio",
      "description": "Chocolate Strawberry",
    },
    {
      "image": AppImages.newArrivalImage2,
      "title": "Pistachio",
      "description": "Chocolate Strawberry",
    },
    {
      "image": AppImages.newArrivalImage1,
      "title": "Pistachio",
      "description": "Chocolate Strawberry",
    },
    {
      "image": AppImages.newArrivalImage2,
      "title": "Pistachio",
      "description": "Chocolate Strawberry",
    },
    {
      "image": AppImages.newArrivalImage1,
      "title": "Pistachio",
      "description": "Chocolate Strawberry",
    },
    {
      "image": AppImages.newArrivalImage2,
      "title": "Pistachio",
      "description": "Chocolate Strawberry",
    },
  ];

}


class BannerModel {
  final String image;
  final String title;
  final String subtitle;

  BannerModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}


class CategoryModel {
  final String image;
  final String title;
  final String subtitle;

  CategoryModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}



class NewsModel {
  final String image;
  final String title;
  final String subtitle;

  NewsModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}
