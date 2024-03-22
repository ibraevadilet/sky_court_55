import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sky_court/programs/program_content.dart';
import 'package:sky_court/programs/program_detaile.dart';

class ProgramAll extends StatelessWidget {
  const ProgramAll({super.key, required this.title, required this.list});
  final String title;
  final List<ProgramModel> list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(title),
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
          itemCount: list.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) => ProgramWidget(
            model: list[index],
          ),
        ),
      ),
    );
  }
}

class ProgramWidget extends StatelessWidget {
  const ProgramWidget({
    super.key,
    required this.model,
  });

  final ProgramModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProgramDetaile(model: model),
          ),
        );
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.r),
            child: ClipRRect(
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
          ),
          Container(
            width: 240.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: const Color(0xffFF6B00).withOpacity(0.6),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                model.title,
                style: TextStyle(
                  fontSize: 20.h,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
