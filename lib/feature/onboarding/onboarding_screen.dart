import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_ai/core/colors.dart';
import 'package:language_ai/core/helper/spacing.dart';
import 'package:language_ai/core/image.dart';
import 'package:language_ai/core/text.dart';
import 'package:language_ai/feature/onboarding/widget/defult_home_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class Onboarding {
  final String image;
  final String title1;
  final String title2;

  Onboarding({required this.image, required this.title1, required this.title2});
}

List<Onboarding> onbord = [
  Onboarding(
    image: MyImage.image1,
    title1: MyText.confidance,
    title2: MyText.withconversation,
  ),
  Onboarding(
    image: MyImage.image2,
    title1: MyText.takeyour,
    title2: MyText.developahabit,
  ),
  Onboarding(
    image: MyImage.image3,
    title1: MyText.thelessons,
    title2: MyText.usingavariety,
  ),
];
var boardcontroller = PageController();

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    boardcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: Scaffold(
        backgroundColor: MyColor.mainColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalSpacing(30),
            Expanded(
              child: PageView.builder(
                controller: boardcontroller,
                itemBuilder: (context, index) {
                  return defultHomePage(
                    Onboarding(
                      image: onbord[index].image,
                      title1: onbord[index].title1,
                      title2: onbord[index].title2,
                    ),
                    context,
                  );
                },
                itemCount: onbord.length,
                physics: const BouncingScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
