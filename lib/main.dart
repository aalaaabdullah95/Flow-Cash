import 'package:flow_cash_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlowCash());
}

class FlowCash extends StatelessWidget {
  const FlowCash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routers,
    );
  }
}
