import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class RulesAll extends StatelessWidget {
  const RulesAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text('Basketball rules'),
        titleTextStyle: TextStyle(
          fontSize: 20.h,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 16.r),
          shrinkWrap: true,
          itemCount: listRules.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) => ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.r),
              child: CachedNetworkImage(
                imageUrl: listRules[index],
                width: MediaQuery.of(context).size.width,
                height: 300.h,
                fit: BoxFit.cover,
                placeholder: (context, url) => ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 300.h,
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade500,
                      highlightColor: Colors.grey.shade200,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
        ),
      ),
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
