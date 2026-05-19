import 'package:flutter/material.dart';
import 'package:movies_app/common/routes.dart';
import 'package:movies_app/common/theme/app_themes.dart';
import 'package:movies_app/screens/auth/log&reg/login_screen.dart';
import 'package:movies_app/screens/auth/log&reg/register_screen.dart';
import 'package:movies_app/screens/auth/splash_screen.dart';
import 'package:movies_app/screens/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.dark,

      routes: {
        AppRoutes.SplashScreen: (_) => SplashScreen(),
        AppRoutes.LoginScreen: (_) => LoginScreen(),
        AppRoutes.RegisterScreen: (_) => RegisterScreen(),
        AppRoutes.HomeView: (_) => HomeView(),
      },
      initialRoute: AppRoutes.HomeView,
    );
  }
}
