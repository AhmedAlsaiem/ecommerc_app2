import 'package:ecommerc_app2/views/homw_view/person_ifon/category/avetarCategory.dart';
import 'package:ecommerc_app2/views/homw_view/person_ifon/category/custom_list_tile.dart';
import 'package:ecommerc_app2/views/sigin_view/components/sigin_custom_appbar.dart';
import 'package:flutter/material.dart';

class PersonBody extends StatelessWidget {
  const PersonBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SiginCustomAppBar(
              title: 'Profile',
            ),
            CircularAvaterView(),
            SizedBox(height: 25),
            CustomListTile(
                title: 'My Account', loadingIcon: Icons.person_2_outlined),
            SizedBox(height: 25),
            CustomListTile(
                title: 'Natifications',
                loadingIcon: Icons.notifications_active_outlined),
            SizedBox(height: 25),
            CustomListTile(
                title: 'Settings', loadingIcon: Icons.settings_outlined),
            SizedBox(height: 25),
            CustomListTile(
                title: 'Help Center', loadingIcon: Icons.help_outline),
            SizedBox(height: 25),
            CustomListTile(
                title: 'Log Out', loadingIcon: Icons.logout_outlined),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
