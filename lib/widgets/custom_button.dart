import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flux_responsive_admin_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.backgourndColor, this.textColor, required this.title});

  final Color? backgourndColor, textColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        color: backgourndColor ?? const Color(0xff629584),
        onPressed: () {},
        child: Text(
          title,
          style: AppStyles.styleSemiBold18(context).copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
