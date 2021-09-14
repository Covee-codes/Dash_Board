import 'package:flutter/material.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/widgets/horizontal_menu_items.dart';
import 'package:web_dashboard/widgets/vertical_menu_items.dart';

class SideMenuItems extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  
  
  const SideMenuItems({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    if (ResponsiveWidget.isCustomScreen(context)) {
      return VerticalMenuItems(
        itemName: itemName,
        onTap: onTap,
      );
    }
    return HorizontalMenuItems(itemName: itemName, onTap: onTap);
   }

  
  }






  

  






