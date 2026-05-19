
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:movies_app/common/gen/assets.gen.dart';
import 'package:movies_app/screens/auth/log&reg/register_screen.dart';
import 'package:movies_app/widgets/custom_OutlinedButton.dart';
import 'package:movies_app/widgets/custom_filled_button.dart';
import 'package:movies_app/widgets/customtextfiled.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = "/loginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool isloading = false;

  String? error;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Form(
        key: _formkey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Assets.images.splash.image(width: 150)),

                  Gap(50),
                  CustomTextField(
                    hintText: 'Enter your email',
                    prefixIconPath: Assets.icons.email.path,
                    controller: email,
                    validator: (value) {
                      return null;
                    },
                  ),
                  Gap(16),
                  CustomTextField(
                    hintText: 'Enter your Password',
                    prefixIconPath: Assets.icons.lock.path,
                    isPassword: true,
                    controller: password,
                    validator: (value) {
                      return null;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password? ",
                          style: theme.textTheme.labelLarge!.copyWith(
                            color: theme.hoverColor,
                            decoration: TextDecoration.underline,
                            decorationColor: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(33),
                  CustomFilledButton(
                    text: 'Login',
                    isloading: isloading,
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterScreen.routeName);
                    },
                  ),

                  Gap(25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Don’t have an account ?",
                              style: theme.textTheme.labelSmall,
                            ),

                            TextSpan(
                              text: "creat one",
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: theme.hoverColor,
                                decoration: TextDecoration.lineThrough,
                              ),
                              recognizer: TapGestureRecognizer(),
                              onEnter: (event) {},
                            ),
                          ],
                        ),
                      ),

                      Gap(32),

                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: theme.hoverColor,
                              thickness: 2,
                              indent: 70,
                              endIndent: 10,
                            ),
                          ),
                          Text(
                            "OR",
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: theme.hoverColor,
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: theme.hoverColor,
                              thickness: 2,
                              indent: 10,
                              endIndent: 70,
                            ),
                          ),
                        ],
                      ),

                      Gap(24),
                      CustomFilledButton(
                        text: " Login with Google",
                        isloading: isloading,
                        onPressed: () async {},
                        child: SvgPicture.asset(Assets.icons.aIconGoogle.path),
                      ),

                      Gap(33),
                      Custom_OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            SvgPicture.asset(Assets.icons.usa.path, width: 50),
                            Gap(10),
                            SvgPicture.asset(
                              Assets.icons.egypt.path,
                              width: 50,
                            ),
                          ],
                        ),
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
