import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RulesAll extends StatelessWidget {
  const RulesAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: false,
        title: const Text('Basketball rules'),
        titleTextStyle: TextStyle(
          fontSize: 20.h,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.r),
        child: const Column(
          children: [],
        ),
      )),
    );
  }
}

List<String> listRules = [
  'https://i.ibb.co/1RK4Gbt/relu1.png',
  'https://i.ibb.co/rw9pzFz/relu2.png',
  'https://i.ibb.co/qNCxc73/relu3.png',
  'https://i.ibb.co/m9c0c5L/relu4.png',
  'https://i.ibb.co/b577MXH/relu5.png',
  'https://i.ibb.co/7S9zNw6/relu6.png',
  'https://i.ibb.co/C1L8wDH/relu7.png',
  'https://i.ibb.co/4YRTVDg/relu8.png',
  'https://i.ibb.co/chyTW0Q/relu9.png',
  'https://i.ibb.co/tP48SsT/relu10.png',
  'https://i.ibb.co/HBgGRVr/relu11.png',
  'https://i.ibb.co/fHszwGb/relu12.png',
  'https://i.ibb.co/Lr5Zc4z/relu13.png',
  'https://i.ibb.co/yBn0Pwy/relu14.png',
];
