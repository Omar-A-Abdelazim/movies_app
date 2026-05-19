// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:movies_app/common/gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        animate = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Spacer(),
              AnimatedContainer(
                width: animate ? 300 : 0,
                duration: Duration(seconds: 5),
                curve: Curves.decelerate,
                child: Assets.images.splash.image(),
              ),
              Spacer(),
              AnimatedContainer(
                width: animate ? 300 : 0,

                duration: Duration(seconds: 7),
                curve: Curves.easeInSine,
                onEnd: () {},
                child: Assets.images.routelogo.image(),
              ),

              Text(
                "Supervised by Mohamed Elnagdy",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelSmall,
              ), //TODO
              //  Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
