// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/widgets/custom_screen.dart';
import 'package:web_dashboard/widgets/large_screen.dart';
import 'package:web_dashboard/widgets/medium_screen.dart';
import 'package:web_dashboard/widgets/small_screen.dart';
import 'package:web_dashboard/widgets/top_nav.dart';

// ignore: use_key_in_widget_constructors
class SiteLayout extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final GlobalKey<ScaffoldState> ScaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ScaffoldKey,
      appBar: topNavigationBar(context, ScaffoldKey),
      drawer: Drawer(),      
      body: ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen(), mediumScreen: MediumScreen(), customScreen: CustomScreen(), ),
    );
  }

 

}