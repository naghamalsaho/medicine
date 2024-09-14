import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine/controller/api/add_order.dart';
import 'package:medicine/controller/api/get_all_medicines_controller.dart';
import 'package:medicine/controller/api/show_orders_controller.dart';
import 'package:medicine/model/medicine.dart';
import 'package:medicine/view/CustomWidget/AppBarWidget.dart';
import 'package:medicine/view/CustomWidget/ButtonWidget.dart';
import 'package:medicine/view/CustomWidget/CardWidget.dart';
import 'package:medicine/view/CustomWidget/Titlewidget.dart';

class OrderPage extends StatelessWidget {
  
  OrderPage({super.key});
  TextEditingController quant = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      AppBarWidget(),
      //Category
      TitleWidget(title: "Choose Midicine"),

//Categories
      Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.05),
            borderRadius: BorderRadius.circular(15)),
        child: FutureBuilder<List<MedicineModel>>(
          future: getAllMedicineService().getAllMedicine(),
          builder: (context, snapshot) {
            print("111");
            if (snapshot.hasData) {
              List<MedicineModel> medicines = snapshot.data!;
              return ListView.builder(
                  itemCount: medicines.length,
                  itemBuilder: (context, index) {
                    return CardWidget(medicine: medicines[index]);
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        ButtonWidget(
          Title: "Send",
          onPressed: () {
            print(256565656);
         //  AddOrderService().addOrder();
           Get.snackbar(
             "Order" ,
      //"Order", 
      "The order was added successfully",
      
      duration: const Duration(seconds: 2),
      snackPosition: SnackPosition.BOTTOM ,
      //backgroundColor: Colors.grey.withOpacity(0.2),
      //maxWidth: 250,
      //borderColor: Colors.white,
      
           );
          // showOrdersService().showOrders();
          //  Get.toNamed('/showorders');
          },
        ), ButtonWidget(
          Title: "Show Orders",
          onPressed: (){
      
            Get.toNamed('/showorders');
          
          },)],),
      )
     
    ]));
  }
}
