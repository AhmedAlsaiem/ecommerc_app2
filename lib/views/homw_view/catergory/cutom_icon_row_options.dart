import 'package:ecommerc_app2/views/homw_view/catergory/custom_continer_with_icon.dart';
import 'package:flutter/material.dart';

class CustomIconRowOptions extends StatelessWidget {
  const CustomIconRowOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomContinerWithIconAndTexfField(
          icon: Icons.flash_on_outlined,
          fristText: 'Flash',
          lastText: 'Deal',
        ),
        CustomContinerWithIconAndTexfField(
          icon: Icons.fact_check_outlined,
          fristText: 'Bill',
          lastText: '',
        ),
        CustomContinerWithIconAndTexfField(
          icon: Icons.smart_toy_outlined,
          fristText: 'Game',
          lastText: '',
        ),
        CustomContinerWithIconAndTexfField(
          icon: Icons.gif_box_sharp,
          fristText: 'Deaily',
          lastText: 'Gift',
        ),
        CustomContinerWithIconAndTexfField(
          icon: Icons.more,
          fristText: 'Flash',
          lastText: 'Deal',
        ),
      ],
    );
  }
}
