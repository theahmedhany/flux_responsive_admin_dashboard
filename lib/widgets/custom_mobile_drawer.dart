import 'package:flutter/material.dart';
import 'package:flux_responsive_admin_dashboard/models/drawer_item_model.dart';
import 'package:flux_responsive_admin_dashboard/models/user_info_model.dart';
import 'package:flux_responsive_admin_dashboard/utils/app_images.dart';
import 'package:flux_responsive_admin_dashboard/widgets/active_and_inactive_item.dart';
import 'package:flux_responsive_admin_dashboard/widgets/drawer_items_list_view.dart';
import 'package:flux_responsive_admin_dashboard/widgets/user_info_list_tile.dart';

class CustomMobileDrawer extends StatelessWidget {
  const CustomMobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.6,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: const SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: 'Ahmed Hany',
                  subTitle: 'ahmed@gmail.com',
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            DrawerItemsListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Setting system', image: Assets.imagesSettings),
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout account', image: Assets.imagesLogout),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}