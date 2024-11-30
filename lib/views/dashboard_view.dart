import 'package:flutter/material.dart';
import 'package:flux_responsive_admin_dashboard/utils/size_config.dart';
import 'package:flux_responsive_admin_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:flux_responsive_admin_dashboard/widgets/custom_mobile_drawer.dart';
import 'package:flux_responsive_admin_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:flux_responsive_admin_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:flux_responsive_admin_dashboard/widgets/dashboard_tablet_layout.dart';

class DashBoradView extends StatefulWidget {
  const DashBoradView({super.key});

  @override
  State<DashBoradView> createState() => _DashBoradViewState();
}

class _DashBoradViewState extends State<DashBoradView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              scrolledUnderElevation: 0,
              surfaceTintColor: Colors.transparent,
              backgroundColor: const Color(0xffE2F1E7),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Color(0xff387478),
                ),
              ),
            )
          : null,
      backgroundColor: const Color(0xffE2F1E7),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomMobileDrawer()
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
