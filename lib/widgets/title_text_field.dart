import 'package:flutter/material.dart';
import 'package:flux_responsive_admin_dashboard/utils/app_styles.dart';
import 'package:flux_responsive_admin_dashboard/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});

  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 8,
        ),
        CustomTextField(
          hint: hint,
        ),
      ],
    );
  }
}
