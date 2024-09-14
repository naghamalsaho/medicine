import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/controller/api/get_all_catogray.dart';
import 'package:medicine/controller/api/search_controller.dart';
import 'package:medicine/model/catogray.dart';
import 'package:medicine/model/medicine.dart';
import 'package:medicine/view/CustomWidget/AppBarWidget.dart';
import 'package:medicine/view/CustomWidget/ButtonWidget.dart';
import 'package:medicine/view/CustomWidget/ContainerWidget.dart';
import 'package:medicine/view/CustomWidget/DrawerWidget.dart';
import 'package:medicine/view/CustomWidget/SearchWidget.dart';
import 'package:medicine/view/CustomWidget/Titlewidget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  String? catograyName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerWidget(),
        body: ListView(children: [
          AppBarWidget(),
          //Search
          SearchWidget(
            hintText: "Search Drug or Clasification",
            onFieldSubmitted: (data) async {
              catograyName = data;
              CatograyModel catogray =
                  await SearchService().getSearchCatogray(catograyName!);

              Get.toNamed("/medicines", arguments: catogray);
            },
          ),
          //Category
          TitleWidget(title: "Categories"),

//Categories
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3))
                ],
                color: Colors.grey.withOpacity(0.05),
                borderRadius: BorderRadius.circular(15)),
            child: FutureBuilder<List<CatograyModel>>(
              future: AllCatogaryService().getAllCatogary(),
              builder: (context, snapshot) {
                print("111");
                if (snapshot.hasData) {
                  List<CatograyModel> catograies = snapshot.data!;
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: catograies.length,
                      itemBuilder: (context, index) {
                        return ContainerWidget(
                          catogray: catograies[index],
                        );
                      });
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          TitleWidget(title: "Favorites"),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            height: 280,
            width: double.infinity,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3))
                ],
                color: Colors.grey.withOpacity(0.05),
                borderRadius: BorderRadius.circular(15)),
            child: FutureBuilder<List<CatograyModel>>(
              future: AllCatogaryService().getAllCatogary(),
              builder: (context, snapshot) {
                print("111");
                if (snapshot.hasData) {
                  List<CatograyModel> catograies = snapshot.data!;
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: catograies.length,
                      itemBuilder: (context, index) {
                        return ContainerWidget(
                          catogray: catograies[index],
                        );
                      });
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          ButtonWidget(
              Title: "Medicines",
              onPressed: () {
                Get.toNamed('/allmedicines');
              }),
        ]));
  }
}
