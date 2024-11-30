import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flux_responsive_admin_dashboard/utils/app_images.dart';
import 'package:flux_responsive_admin_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Container(
          decoration: ShapeDecoration(
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                Assets.imagesCardBackground,
              ),
            ),
            color: const Color(0xff629584),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.only(left: 31, right: 42, top: 16),
                title: Text(
                  'Card Name',
                  style: AppStyles.styleRegular16(context).copyWith(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Billie Eilish',
                  style: AppStyles.styleMedium20(context).copyWith(
                    color: Colors.white,
                  ),
                ),
                trailing: SvgPicture.asset(
                  Assets.imagesGallery,
                  color: Color(0xffE2F1E7),
                ),
              ),
              const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(right: 48 - 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '0918 8124 0042 8129',
                      style: AppStyles.styleSemiBold24(context).copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '12/20 - 124',
                      style: AppStyles.styleRegular16(context)
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const Flexible(
                child: SizedBox(
                  height: 54 - 28,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
