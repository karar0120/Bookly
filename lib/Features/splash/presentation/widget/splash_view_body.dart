import 'package:bookly/Features/splash/presentation/widget/sliding_text.dart';
import 'package:bookly/core/constance/image_constance.dart';
import 'package:bookly/core/constance/values_manger.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constance/route_manager.dart';

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
      duration: Duration(seconds: AppSize.s1.toInt()),
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
          height: AppSize.s60.h,
        ),
        SizedBox(
          height: AppSize.s20.h,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(
       Duration(seconds: AppSize.s2.toInt()),
          () {

        // Get.to(() => const HomeView(),
        //     transition: Transition.fade,
        //     duration: ConstantsManager.kTranstionDuration);

            GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }
}
