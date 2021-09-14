// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard/controllers/styles.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 14),
                child: Image.asset("assets/icon/logo.png", width: 28,)
              )
            ],
          )
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                key.currentState?.openDrawer();
              },
            ),
      elevation: 0,
      title: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Visibility(child: CustomText(text: "Dash", color: lightGrey,  size: 20,
              weight: FontWeight.bold, 
            ),
             ),
             Expanded (child: Container()),
             IconButton(
               icon:
                Icon(Icons.settings,
                 color: dark.withOpacity(.7),
                 ),
                  onPressed: () {},
                  ),

            Stack(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                IconButton(icon: Icon(Icons.notifications, color: dark.withOpacity(.7)),
                onPressed: (){}),
                Positioned(
                  top:  7,
                  right: 7,
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: light, width: 2)),
                  ))
              ]
            ),
          // ignore: sized_box_for_whitespace
          Container(
          width: 1,
          height: 22,
          color: lightGrey,
          ),

          SizedBox(
            width: 24,
          ),
      CustomText(
        text: "Covenant Draxler",
         color: lightGrey,
          size: 0,
           weight: FontWeight.normal),
           SizedBox(
            width: 16,
           ),

      Container(
        decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(30)),
        child: Container(
          padding: EdgeInsets.all(2),
          margin: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundColor: light,
            child: Icon(Icons.person_outline, color: dark,),),
        ),
        ),
        ],
      ),

        iconTheme: IconThemeData(color: dark),
        backgroundColor: Colors.transparent,
    );
