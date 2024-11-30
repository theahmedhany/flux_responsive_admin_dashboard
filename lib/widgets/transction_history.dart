import 'package:flutter/material.dart';
import 'package:flux_responsive_admin_dashboard/utils/app_styles.dart';
import 'package:flux_responsive_admin_dashboard/widgets/transction_history_list_view.dart';

class TrasnctionHistory extends StatelessWidget {
  const TrasnctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TansctionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2024',
          style: TextStyle(
            color: Color(0xFFABABAB),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TransctionHistoryListView(),
      ],
    );
  }
}

class TansctionHistoryHeader extends StatelessWidget {
  const TansctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xff629584),
          ),
        )
      ],
    );
  }
}
