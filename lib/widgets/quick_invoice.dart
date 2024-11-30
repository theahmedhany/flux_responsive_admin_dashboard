import 'package:flutter/material.dart';
import 'package:flux_responsive_admin_dashboard/widgets/custom_background_container.dart';
import 'package:flux_responsive_admin_dashboard/widgets/latest_transction.dart';
import 'package:flux_responsive_admin_dashboard/widgets/quick_invoice_form.dart';
import 'package:flux_responsive_admin_dashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransction(),
          Divider(
            height: 48,
            color: Color(0xffE2F1E7),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
