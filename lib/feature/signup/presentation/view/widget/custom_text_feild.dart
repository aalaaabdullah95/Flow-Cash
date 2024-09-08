import 'package:flow_cash_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.label,
    required this.prefisIcon,
    this.suffexIcon,
    this.isObSecure = true,
  });

  final String label;
  final Icon prefisIcon;
  final IconButton? suffexIcon;
  final bool isObSecure;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObSecure,
      cursorColor: MyColors.grey,
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: suffexIcon,
        prefixIcon: prefisIcon,
        labelStyle: const TextStyle(color: MyColors.grey),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.grey)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.grey)),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.grey)),
      ),
    );
  }
}
