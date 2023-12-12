import 'package:ecommerc_app2/constants.dart';
import 'package:ecommerc_app2/models/home_view_slider_model.dart';
import 'package:ecommerc_app2/views/sigin_view/sign_in_view.dart';
import 'package:ecommerc_app2/views/spelsh_screen.dart/components/custom_buttom.dart';
import 'package:ecommerc_app2/views/spelsh_screen.dart/components/spelsh_view_body.dart';
import 'package:flutter/material.dart';

class SpleshVeiw extends StatefulWidget {
  const SpleshVeiw({super.key});

  @override
  State<SpleshVeiw> createState() => _SpleshVeiwState();
}

class _SpleshVeiwState extends State<SpleshVeiw> {
  int currentSplesh = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Add this line

      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 500,
              child: PageView.builder(
                onPageChanged: (value) {
                  currentSplesh = value;
                  setState(() {});
                },
                physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.fast,
                ),
                itemCount: sliderList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return HomeViewSlider(
                    sliderModel: sliderList[index],
                  );
                },
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(sliderList.length, (index) {
                return AnimatedContainer(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: currentSplesh == index
                          ? appMainColor
                          : const Color.fromARGB(255, 234, 230, 230),
                    ),
                    height: 6,
                    margin: const EdgeInsets.only(right: 5),
                    width: currentSplesh == index ? 20 : 6,
                    duration: const Duration(milliseconds: 200));
              }),
            ),
            const Spacer(),
            CustomButtom(
              title: 'Continue',
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SiginView();
                }));
              },
            )
          ],
        ),
      )),
    );
  }
}

List<HomeViewSliderModel> sliderList = [
  HomeViewSliderModel(
      imageUrl: 'assets/images/splash_1.png',
      subTitle: "Welcome to Tokoto, Let's Shop!"),
  HomeViewSliderModel(
      imageUrl: 'assets/images/splash_2.png',
      subTitle:
          'We help people onect with store \naround United State of America'),
  HomeViewSliderModel(
      imageUrl: 'assets/images/splash_3.png',
      subTitle:
          'We show the easy way to shop \n     just stay at home with us'),
];
