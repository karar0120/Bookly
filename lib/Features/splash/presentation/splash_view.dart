import 'package:bookly/Features/splash/presentation/widget/splash_view_body.dart';
import 'package:flutter/material.dart';

import '../../../core/constans/color_constace.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SplashViewBody());
  }
}
