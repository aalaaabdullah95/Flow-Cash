import 'package:flow_cash_app/core/utils/asset.dart';
import 'package:flow_cash_app/core/utils/styles.dart';
import 'package:flow_cash_app/feature/signup/presentation/view/widget/custom_button.dart';
import 'package:flow_cash_app/feature/signup/presentation/view/widget/custom_text_feild.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  GlobalKey globalKey = GlobalKey();
  bool isObSecure = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Form(
              key: globalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Image(
                      height: 250,
                      image: AssetImage(Asset.logo),
                    ),
                  ),
                  const Text(
                    'Welcome To Flow Cash',
                    style: Styles.textStyle30,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'SignUp please!',
                    style: Styles.textStyle20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextFeild(
                    prefisIcon: Icon(Icons.email),
                    label: 'Email',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFeild(
                    prefisIcon: const Icon(Icons.password),
                    isObSecure: isObSecure,
                    suffexIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObSecure = !isObSecure;
                        });
                      },
                      icon: isObSecure
                          ? const Icon(
                              Icons.visibility_off,
                            )
                          : const Icon(Icons.visibility),
                    ),
                    label: 'Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                      text: 'SIGNUP',
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Already Have Account?',
                        style: Styles.textStyle20.copyWith(color: Colors.grey),
                      ),
                      const Text(
                        ' LOGIN',
                        style: Styles.textStyle20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
