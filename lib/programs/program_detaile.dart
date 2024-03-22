import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sky_court/programs/program_content.dart';

class ProgramDetaile extends StatelessWidget {
  const ProgramDetaile({super.key, required this.model});
  final ProgramModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(model.title),
        titleTextStyle: TextStyle(
          fontSize: 20.h,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.r),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: 20.h),
            ClipRRect(
              borderRadius: BorderRadius.circular(24.r),
              child: CachedNetworkImage(
                imageUrl: model.image,
                width: MediaQuery.of(context).size.width,
                height: 200.h,
                fit: BoxFit.cover,
                placeholder: (context, url) => ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200.h,
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
            SizedBox(height: 20.h),
            Text(
              model.description,
              style: TextStyle(
                fontSize: 16.h,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.h),
          ],
        )),
      )),
    );
  }
}
