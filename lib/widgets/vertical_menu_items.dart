import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/controllers/controllers.dart';
import 'package:web_dashboard/controllers/styles.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class VerticalMenuItems extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const VerticalMenuItems(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return InkWell(
        onTap: onTap,
        onHover: (value) {
          value
              ? menuController.onHover(itemName)
              : menuController.onHover("Not Hovering");

        }, child: Obx(() => Container(
            color: menuController.isHovering(itemName)
            ? lightGrey.withOpacity(.1)
            : Colors.transparent,
        child: Row(
        // ignore: prefer_const_literals_to_create_immutables
           children: [
            Visibility(visible:  menuController.isHovering(itemName) ||
            menuController.isActive(itemName),
           // ignore: sized_box_for_whitespace
            child: Container(
            width: 3,
            height: 72,
            color: dark,
            ),
            maintainSize: true,
            maintainState: true,
            maintainAnimation: true,
          ),

        Expanded(child: Column(
          mainAxisSize: MainAxisSize.min,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
           Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.all(16),
            child: menuController.returnIconFor(itemName),
            ),

           if (!menuController.isActive(itemName))
              Flexible(
              child: CustomText(
                 text: itemName,
                 size: 0,
                 color: menuController.isHovering(itemName)
                 ? dark
                : lightGrey,
                weight: FontWeight.normal))
             else
              Flexible(
              child: CustomText(
              text: itemName,
              size: 18,
              color: dark,
              weight: FontWeight.bold,
            ))
           ],
         ))

              ],
            ),
        ) ),
     

        );
  }
}
