import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_court/game/game_page.dart';
import 'package:sky_court/home/home_page.dart';
import 'package:sky_court/programs/programs_page.dart';
import 'package:sky_court/settings/settings_page.dart';

class BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[isActive],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          top: 15.r,
          bottom: 30.r,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => setState(() => isActive = 0),
              child: Image.asset(
                'assets/images/homeIcon.png',
                color: isActive == 0 ? null : Colors.black.withOpacity(0.4),
                width: 35.w,
              ),
            ),
            InkWell(
              onTap: () => setState(() => isActive = 1),
              child: Image.asset(
                'assets/images/quizIcon.png',
                color: isActive == 1 ? null : Colors.black.withOpacity(0.4),
                width: 35.w,
              ),
            ),
            InkWell(
              onTap: () => setState(() => isActive = 2),
              child: Image.asset(
                'assets/images/gameIcon.png',
                color: isActive == 2 ? null : Colors.black.withOpacity(0.4),
                width: 35.w,
              ),
            ),
            InkWell(
              onTap: () => setState(() => isActive = 3),
              child: Image.asset(
                'assets/images/settingsIcon.png',
                color: isActive == 3 ? null : Colors.black.withOpacity(0.4),
                width: 35.w,
              ),
            ),
          ],
        ),
      ),
    );
  }

  late int isActive = widget.indexScr;
  final _pages = <Widget>[
    const HomePage(),
    const GamePage(),
    const ProgramsPage(),
    const SettingsPage(),
  ];
}

class BottomBar extends StatefulWidget {
  const BottomBar({super.key, this.indexScr = 0});
  final int indexScr;

  @override
  State<BottomBar> createState() => BottomBarState();
}
