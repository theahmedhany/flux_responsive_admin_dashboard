import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flux_responsive_admin_dashboard/models/item_details_model.dart';
import 'package:flux_responsive_admin_dashboard/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(
      color: Color(0xff387478),
      title: 'Design Service',
      value: '%40',
    ),
    ItemDetailsModel(
      color: Color(0xff629584),
      title: 'Design Product',
      value: '%25',
    ),
    ItemDetailsModel(
      color: Color(0xff243642),
      title: 'Product Royalty',
      value: '%20',
    ),
    ItemDetailsModel(
      color: Color(0xFFD1E4D8),
      title: 'Other',
      value: '%22',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );
  }
}
