import 'package:flutter/material.dart';
import 'package:flux_responsive_admin_dashboard/widgets/custom_background_container.dart';
import 'package:flux_responsive_admin_dashboard/widgets/my_cards_section.dart';
import 'package:flux_responsive_admin_dashboard/widgets/transction_history.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xffE2F1E7),
          ),
          TrasnctionHistory(),
        ],
      ),
    );
  }
}
