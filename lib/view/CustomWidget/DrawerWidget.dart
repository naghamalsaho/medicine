import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
            accountName: Text(
              "User",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            accountEmail: Text(
              "usar@gmail.com ",
              style: TextStyle(fontSize: 16),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                "images/m.png",
              ),
            ),
          ),
        ),
        InkWell(
            onTap: () {
              Get.toNamed("orders");
            },
            child: ListTile(
              leading: Icon(Icons.home_filled),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )),
        InkWell(
            onTap: () {
                        Get.toNamed("orders");

            },
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "My Account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )),
        InkWell(
            onTap: () {
                           Get.toNamed("orders");

            },
            child: ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text(
                "My Orders",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )),
        InkWell(
            onTap: () {
                         Get.toNamed("orders");

            },
            child: ListTile(
              leading: Icon(Icons.favorite_border_outlined),
              title: Text(
                "My Favorite",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )),
        InkWell(
            onTap: () {
              Get.toNamed("orders");
            },
            child: ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                "Log Out",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )),
      ]),
    );
  }
}
