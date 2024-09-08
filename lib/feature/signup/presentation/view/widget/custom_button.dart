import 'package:flow_cash_app/core/utils/colors.dart';
import 'package:flow_cash_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: MyColors.shamrokGreen3,
          padding:
              const EdgeInsets.only(left: 80, right: 80, top: 10, bottom: 10)),
      onPressed: () {},
      child: Text(
        text,
        style: Styles.textStyle25,
      ),
    );
  }
}
