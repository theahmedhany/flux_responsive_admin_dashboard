import 'package:flutter/material.dart';
import 'package:flux_responsive_admin_dashboard/models/all_expensess_item_model.dart';
import 'package:flux_responsive_admin_dashboard/utils/app_images.dart';
import 'package:flux_responsive_admin_dashboard/widgets/all_expenssess_item.dart';

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});

  @override
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  final items = [
    const AllExpensessItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'January 2019',
      price: r'$57,367',
    ),
    const AllExpensessItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'December 2024',
      price: r'$20,129',
    ),
    const AllExpensessItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$83,041',
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 0,
              itemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 2,
              itemModel: items[2],
            ),
          ),
        )
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
