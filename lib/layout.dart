import 'package:app_dashboard_web/helpers/responsive.dart';
import 'package:app_dashboard_web/widgets/large_screen.dart';
import 'package:app_dashboard_web/widgets/small_screen.dart';
import 'package:app_dashboard_web/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scafdoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafdoldKey,
      appBar: topNavigationBar(context, scafdoldKey),
      drawer: Drawer(),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        mediumScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
