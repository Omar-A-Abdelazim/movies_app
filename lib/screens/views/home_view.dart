import 'package:flutter/material.dart';
import 'package:movies_app/common/gen/assets.gen.dart';
import 'package:movies_app/common/theme/app_color.dart';
import 'package:movies_app/screens/views/tabs/explor_tap.dart';
import 'package:movies_app/screens/views/tabs/home_tap.dart';
import 'package:movies_app/screens/views/tabs/profile_tap.dart';
import 'package:movies_app/screens/views/tabs/searsh_tap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = "/HomeView";
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late List tabs = [HomeTap(), SearshTap(), ExplorTap(), ProfileTap()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(
          context,
        ).bottomNavigationBarTheme.backgroundColor,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.home.svg(),
            activeIcon: Assets.icons.home.svg(color: AppColor.btncolor),

            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.searsh.svg(),
            activeIcon: Assets.icons.searsh.svg(color: AppColor.btncolor),
            label: "favorite",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.explore.svg(),
            activeIcon: Assets.icons.explore.svg(color: AppColor.btncolor),
            label: "profile",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.profiel.svg(),
            activeIcon: Assets.icons.profiel.svg(color: AppColor.btncolor),
            label: "profile",
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 24),
        child: tabs[index],
      ),
    );
  }
}
