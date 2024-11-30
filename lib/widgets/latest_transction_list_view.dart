import 'package:flutter/material.dart';
import 'package:flux_responsive_admin_dashboard/models/user_info_model.dart';
import 'package:flux_responsive_admin_dashboard/utils/app_images.dart';
import 'package:flux_responsive_admin_dashboard/widgets/user_info_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});

  static const items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Emilia Clarke',
      subTitle: 'Emilia_Clarke@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Scarlett Johansson',
      subTitle: 'Scarlett_Johansson@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Jackie Chan',
      subTitle: 'Jackie_Chan@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Billie Eilish',
      subTitle: 'Billie_Eilish@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
  }
}
