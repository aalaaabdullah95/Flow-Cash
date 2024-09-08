import 'package:flow_cash_app/core/utils/app_router.dart';
import 'package:flow_cash_app/core/utils/asset.dart';
import 'package:flow_cash_app/feature/splash/presentation/views/widget/slide_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView2 extends StatefulWidget {
  const SplashView2({super.key});

  @override
  State<SplashView2> createState() => _SplashView2State();
}

class _SplashView2State extends State<SplashView2>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    super.initState();
    initSlideAnimation();
    delation();
  }

  void delation() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        GoRouter.of(context).push(AppRouter.signUpPage);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  void initSlideAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 4,
      ),
    );
    animation = Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Asset.logo2,
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.3,
                child: SlidingText(animation: animation),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
