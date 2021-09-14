// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/controllers/controllers.dart';
import 'package:web_dashboard/controllers/styles.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/routing/routes.dart';
import 'package:web_dashboard/widgets/custom_text.dart';
import 'package:web_dashboard/widgets/side_menu_items.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: lightGrey,
      // ignore: prefer_const_literals_to_create_immutables
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      width: _width / 48,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icon/logo.png"),
                    ),
                    Flexible(
                        child: CustomText(
                      text: 'Dash',
                      size: 20,
                      color: active,
                      weight: FontWeight.bold,
                    )),
                    SizedBox(
                      width: _width / 48,
                    )
                  ],
                ),
               ],
            ),

             SizedBox(
            height: 40,
          ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
              mainAxisSize: MainAxisSize.min,
              // ignore: non_constant_identifier_names
              children: SideMenuItems.map((itemName) => SideMenuItems(
                    itemName: itemName == AuthenticationPageRoute
                        ? "Log Out"
                        : itemName,
                    onTap: () {
                      if (itemName == AuthenticationPageRoute) {
                        // ignore: todo
                        // TODO:: go to authentiation page
                      }
                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveitemTo(itemName);
                        if (ResponsiveWidget.isSmallScreen(context)) {
                          Get.back();
                          // ignore: todo
                          // TODO:: go to item name Route
                        }
                      }
                    },
                  )).toList())
        ],
      ),
    );
  }
}
