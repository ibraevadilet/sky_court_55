import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TipsCard extends StatefulWidget {
  final String image;
  final String title;
  final String subTitle;

  const TipsCard({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  State<TipsCard> createState() => _TipsCardState();
}

class _TipsCardState extends State<TipsCard> {
  var isOpen = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.r),
        padding: EdgeInsets.all(10.r),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xff6AA9FF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(widget.image, width: 70),
                SizedBox(width: 15.w),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                Icon(
                  isOpen
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                  size: 32.sp,
                ),
              ],
            ),
            isOpen
                ? Column(
                    children: [
                      SizedBox(height: 12.h),
                      Text(
                        widget.subTitle,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
