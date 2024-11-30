import 'package:flutter/material.dart';
import 'package:flux_responsive_admin_dashboard/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:flux_responsive_admin_dashboard/widgets/custom_drawer.dart';
import 'package:flux_responsive_admin_dashboard/widgets/income_section.dart';
import 'package:flux_responsive_admin_dashboard/widgets/my_cards_and_transction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 40, bottom: 40, left: 32),
            child: CustomDrawer(),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpensessAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          MyCardsAndTransctionHistorySection(),
                          SizedBox(height: 24),
                          Expanded(child: IncomeSection()),
                          SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
