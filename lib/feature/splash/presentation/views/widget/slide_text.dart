import 'package:flow_cash_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.animation,
  });

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(
          position: animation,
          child: const Text(
            'Flow Cash',
            style: Styles.textStyle50,
          ),
        );
      },
    );
  }
}
