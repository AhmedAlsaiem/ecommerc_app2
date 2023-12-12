import 'package:ecommerc_app2/views/homw_view/catergory/custom_home_view_icon.dart';
import 'package:ecommerc_app2/views/homw_view/catergory/custom_search_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomAppbarSearchview extends StatelessWidget {
  const CustomAppbarSearchview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CutomSearchTextField(),
        SizedBox(width: 5),
        CustomHomeViewIcon(
          icon: Icons.shopping_cart_outlined,
        ),
        SizedBox(width: 5),
        CustomHomeViewIcon(
          icon: Icons.notifications_none_outlined,
        ),
      ],
    );
  }
}
