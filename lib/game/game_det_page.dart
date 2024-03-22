import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_court/game/game_content.dart';
import 'package:sky_court/game/result_page.dart';

class GameDetPage extends StatefulWidget {
  const GameDetPage({super.key});
  @override
  State<GameDetPage> createState() => _GameDetPageState();
}

class _GameDetPageState extends State<GameDetPage> {
  int cp = 0;
  final cnt = PageController();
  String selected = '';
  ValueNotifier<bool> isChecked = ValueNotifier(false);
  ValueNotifier<bool> isSelected = ValueNotifier(false);
  ValueNotifier<List<String>> rightOtvets = ValueNotifier([]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question ${cp + 1}'),
        titleTextStyle: TextStyle(
          fontFamily: 'Inter',
          fontSize: 20.h,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: cnt,
                  onPageChanged: (value) {
                    isChecked.value = false;
                    isSelected.value = false;
                    cp = value;
                    setState(() {});
                  },
                  itemCount: gameList.length,
                  itemBuilder: (context, index) => PageVWidget(
                    isSelected: isSelected,
                    model: gameList[index],
                    isChecked: isChecked,
                    rightOtvets: rightOtvets,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (cp != 14) {
                    if (isChecked.value) {
                      cnt.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    } else {
                      if (isSelected.value) {
                        isChecked.value = true;
                        setState(() {});
                      }
                    }
                  } else {
                    isChecked.value = true;
                    setState(() {});
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => ResultPage(
                          otvets: rightOtvets.value.length,
                        ),
                      ),
                    );
                  }
                },
                child: ValueListenableBuilder(
                  valueListenable: isChecked,
                  builder: (_, isCheckedVal, child) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 44,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffFF6B00),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        isCheckedVal ? 'Next' : 'Check',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20.h,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 12.h),
            ],
          ),
        ),
      ),
    );
  }
}

class PageVWidget extends StatefulWidget {
  const PageVWidget({
    super.key,
    required this.model,
    required this.isChecked,
    required this.isSelected,
    required this.rightOtvets,
  });

  final GameModel model;
  final ValueNotifier<bool> isChecked;
  final ValueNotifier<bool> isSelected;
  final ValueNotifier<List<String>> rightOtvets;

  @override
  State<PageVWidget> createState() => _PageVWidgetState();
}

class _PageVWidgetState extends State<PageVWidget> {
  String selected = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CenterQwestionWidget(
          title: widget.model.qwest,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: widget.model.otvets
                .map<Widget>(
                  (e) => SelectOtvetWidget(
                    right: widget.model.right,
                    isChecked: widget.isChecked,
                    letter: widget.model.otvets.indexOf(e) == 0
                        ? 'A'
                        : widget.model.otvets.indexOf(e) == 1
                            ? 'B'
                            : 'C',
                    title: e,
                    isSelected: selected == e,
                    onTap: () {
                      widget.isSelected.value = true;
                      setState(() {
                        selected = e;
                      });
                      if (widget.model.right == e) {
                        widget.rightOtvets.value.add(e);
                      } else {
                        widget.rightOtvets.value.remove(e);
                      }
                    },
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class SelectOtvetWidget extends StatelessWidget {
  const SelectOtvetWidget({
    super.key,
    required this.letter,
    required this.title,
    required this.right,
    required this.isSelected,
    required this.onTap,
    required this.isChecked,
  });

  final String letter;
  final String title;
  final String right;
  final bool isSelected;
  final Function() onTap;
  final ValueNotifier<bool> isChecked;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 85.h,
        width: double.infinity,
        decoration: BoxDecoration(
          border: !isChecked.value && isSelected
              ? Border.all(
                  color: const Color(0xffFF6B00),
                  width: 2,
                )
              : null,
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffF1EFEF),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isChecked.value && title == right
                ? Image.asset(
                    'assets/images/check_mark.png',
                    height: 30.h,
                  )
                : CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Text(
                      letter,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18.h,
                        fontWeight: FontWeight.w600,
                        color: !isChecked.value && isSelected
                            ? const Color(0xffFF6B00)
                            : Colors.black,
                      ),
                    ),
                  ),
            SizedBox(width: 15.w),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14.h,
                    fontWeight: FontWeight.w400,
                    color: !isChecked.value && isSelected
                        ? const Color(0xffFF6B00)
                        : Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CenterQwestionWidget extends StatelessWidget {
  const CenterQwestionWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/images/qwiz_border.png',
          ),
          Positioned(
            top: 30.h,
            left: 22,
            right: 22,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/abc_icon.png',
                  height: 58.h,
                ),
                SizedBox(height: 26.h),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20.h,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
