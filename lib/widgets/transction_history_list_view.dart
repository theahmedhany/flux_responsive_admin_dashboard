import 'package:flutter/material.dart';
import 'package:flux_responsive_admin_dashboard/models/transction_model.dart';
import 'package:flux_responsive_admin_dashboard/widgets/transction_item.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});

  static const items = [
    TransctionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 at 5:36 PM',
      amount: r'$426,038',
      isWithdrawal: true,
    ),
    TransctionModel(
      title: 'Landing Page Project',
      date: '13 Apr, 2022 at 1:33 PM',
      amount: r'$78,95',
      isWithdrawal: false,
    ),
    TransctionModel(
      title: 'Juni Mobile App Project',
      date: '13 Apr, 2022 at 12:04 PM',
      amount: r'$66,374',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransctionItem(transctionModel: e)).toList(),
    );
  }
}
