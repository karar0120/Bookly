import 'package:bookly/Features/splash/presentation/widget/sliding_text.dart';
import 'package:bookly/core/constans/image_constance.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../core/constans/constance.dart';
import '../../../home/persentation/home_view/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          ImageConstance.booklyLogo,
          height: 60,
        ),
        const SizedBox(
          height: 20,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
          () {
        Get.to(() => const HomeView(),
            transition: Transition.fade,
            duration: kTranstionDuration);
      },
    );
  }
}
