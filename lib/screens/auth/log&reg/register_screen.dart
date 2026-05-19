import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:movies_app/common/gen/assets.gen.dart';

import 'package:movies_app/widgets/custom_OutlinedButton.dart';
import 'package:movies_app/widgets/custom_filled_button.dart';
import 'package:movies_app/widgets/customtextfiled.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const String routeName = "/RegisterScreen";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool isloading = false;

  String? error;
  List<String> avatar = [
    Assets.images.gamer2.path,
    Assets.images.gamer1.path,
    Assets.images.gamer3.path,
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: theme.hoverColor,
            size: 30,
          ),
        ),
        title: Text(
          "Register",
          style: theme.textTheme.titleSmall!.copyWith(color: theme.hoverColor),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 160,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: avatar.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          avatar[index],
                        
                          fit: BoxFit.contain,
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Gap(20);
                      },
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Avatar", style: theme.textTheme.titleSmall),
                    ],
                  ),
                  Gap(10),
                  CustomTextField(
                    hintText: 'Name',
                    prefixIconPath: Assets.icons.user.path,
                    controller: email,
                    validator: (value) {
                      return null;
                    },
                  ),
                  Gap(16),
                  CustomTextField(
                    hintText: 'Email',
                    prefixIconPath: Assets.icons.email.path,
                    controller: email,
                    validator: (value) {
                      return null;
                    },
                  ),
                  Gap(16),
                  CustomTextField(
                    hintText: 'Password',
                    prefixIconPath: Assets.icons.lock.path,
                    controller: email,
                    validator: (value) {
                      return null;
                    },
                  ),
                  Gap(16),
                  CustomTextField(
                    hintText: 'Confirm Password',
                    prefixIconPath: Assets.icons.lock.path,
                    controller: email,
                    validator: (value) {
                      return null;
                    },
                  ),
                  Gap(16),
                  CustomTextField(
                    hintText: 'Phone number',
                    prefixIconPath: Assets.icons.phone.path,
                    isPassword: true,
                    controller: password,
                    validator: (value) {
                      return null;
                    },
                  ),

                  Gap(33),
                  CustomFilledButton(
                    text: 'Creat Account',
                    isloading: isloading,
                    onPressed: () {},
                  ),

                  Gap(25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Already Have Account ? ",
                              style: theme.textTheme.labelSmall,
                            ),

                            TextSpan(
                              text: "Login",
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

                      Gap(10),

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
                      Gap(20),
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
