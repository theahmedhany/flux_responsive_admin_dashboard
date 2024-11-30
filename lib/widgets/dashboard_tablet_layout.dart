import 'package:flutter/material.dart';
import 'package:flux_responsive_admin_dashboard/widgets/custom_drawer.dart';
import 'package:flux_responsive_admin_dashboard/widgets/dashboard_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(left: 24, top: 40, bottom: 40),
            child: CustomDrawer(),
          ),
        ),
        Expanded(
          flex: 7,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: DashBoardMobileLayout(),
          ),
        ),
      ],
    );
  }
}
