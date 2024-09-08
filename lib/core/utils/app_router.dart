import 'package:flow_cash_app/feature/signup/presentation/view/signup_view.dart';
import 'package:flow_cash_app/feature/splash/presentation/views/splash_view2.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const signUpPage = '/SignUpPage';
  static final routers = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView2(),
    ),
    GoRoute(
      path: signUpPage,
      builder: (context, state) => const SignupView(),
    ),
  ]);
}
