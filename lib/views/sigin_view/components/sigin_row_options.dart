import 'package:ecommerc_app2/views/sigin_view/components/sigin_option.dart';
import 'package:flutter/material.dart';

class SiginRowOptions extends StatelessWidget {
  const SiginRowOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Spacer(),
        SiginOption(
          imageUrl: 'assets/images/google_image.webp',
        ),
        SizedBox(width: 20),
        SiginOption(
          imageUrl: 'assets/images/facebook_im.png',
        ),
        SizedBox(width: 20),
        SiginOption(
          imageUrl: 'assets/images/logo.png',
        ),
        Spacer()
      ],
    );
  }
}
