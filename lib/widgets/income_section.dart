import 'package:flutter/material.dart';
import 'package:flux_responsive_admin_dashboard/widgets/custom_background_container.dart';
import 'package:flux_responsive_admin_dashboard/widgets/income_section_body.dart';
import 'package:flux_responsive_admin_dashboard/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          IncomSectionBody(),
        ],
      ),
    );
  }
}
