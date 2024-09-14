import 'package:flutter/material.dart';
import 'package:medicine/model/medicine.dart';
import 'package:medicine/view/CustomWidget/AppBarWidget.dart';
import 'package:medicine/view/CustomWidget/ButtonWidget.dart';
import 'package:medicine/view/CustomWidget/Titlewidget.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
        MedicineModel medicinedata =
        ModalRoute.of(context)!.settings.arguments as MedicineModel;

    return Scaffold(
     body: Padding(
      padding: EdgeInsets.only(top: 5),
      child: ListView(
        children: [
          AppBarWidget(),
          TitleWidget(title: " Medicine Details "),
          // Container(
          //     margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          //     width: 300,
          // height: 250,
          //  child: Image.asset(
          //    data.image,
          // )
          //),
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 150,
            height: 600,
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3))
                ]),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TitleWidget(title: medicinedata.scientific_name),
                  TitleWidget(title: medicinedata.commercial_name),
                  TitleWidget(title: medicinedata.price.toString()),
                  TitleWidget(title: medicinedata.quantity.toString()),
                  TitleWidget(title: medicinedata.created_at),
                  TitleWidget(title: medicinedata.updated_at),
                  TitleWidget(title: medicinedata.date),
                  TitleWidget(title: medicinedata.company),
                  ButtonWidget(Title: "Favorite" , onPressed: (){},),
        ],
      )
    ),
    ]),
     )
    );
  }
}
