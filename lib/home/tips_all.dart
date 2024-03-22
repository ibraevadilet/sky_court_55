import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_court/home/reles_all.dart';
import 'package:sky_court/home/tips_card.dart';

class TipsAll extends StatelessWidget {
  const TipsAll({super.key});

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
          itemBuilder: (context, index) => TipsCard(
              image: listTips[index].image,
              title: listTips[index].title,
              subTitle: listTips[index].subTitle),
        ),
      ),
    );
  }
}

class TipsModel {
  final String image;
  final String title;
  final String subTitle;

  TipsModel({required this.image, required this.title, required this.subTitle});
}

List<TipsModel> listTips = [
  TipsModel(
    image: 'assets/tips/tp1.png',
    title: 'Proper Body Position:',
    subTitle:
        'Stand sideways to the hoop, with the front foot pointing towards the basket and the back foot to the side. This ensures a better shooting angle.',
  ),
  TipsModel(
    image: 'assets/tips/tp2.png',
    title: 'Correct Ball Grip:',
    subTitle:
        'Grip the ball with your fingers and palm, creating a stable point of contact. This enhances control and shot direction.',
  ),
  TipsModel(
    image: 'assets/tips/tp3.png',
    title: 'Bent Knees:',
    subTitle:
        'Tip: Flex your knees easily, using them as a spring. A quick extension of the legs during the shot adds power.',
  ),
  TipsModel(
    image: 'assets/tips/tp4.png',
    title: 'Elbow Alignment:',
    subTitle:
        'Raise your elbow to form a right angle. This ensures accuracy and improves shot direction.',
  ),
  TipsModel(
    image: 'assets/tips/tp5.png',
    title: 'Consistent Ball Rotation:',
    subTitle:
        'Ensure a consistent ball rotation during the shot by controlling the force and direction of your wrist.',
  ),
  TipsModel(
    image: 'assets/tips/tp6.png',
    title: 'Breathing Control:',
    subTitle:
        'Breathe calmly and rhythmically. Breath control helps focus and improves shot accuracy.',
  ),
  TipsModel(
    image: 'assets/tips/tp7.png',
    title: 'Utilizing Legs:',
    subTitle:
        'Transfer power from your legs to the upper body. Effective leg use adds extra force to the shot.',
  ),
  TipsModel(
    image: 'assets/tips/tp8.png',
    title: 'Follow-Through:',
    subTitle:
        'Use a short follow-through of the ball before the shot to create additional moment of inertia.',
  ),
  TipsModel(
    image: 'assets/tips/tp9.png',
    title: 'Hand and Wrist Strength Training:',
    subTitle:
        'Strengthen the muscles in your hands and wrists to enhance stability and control during the shot.',
  ),
  TipsModel(
    image: 'assets/tips/tp10.png',
    title: 'Experiment with Angles:',
    subTitle:
        'Practice shots from different angles. Learn to adapt to various situations during a game.',
  ),
  TipsModel(
    image: 'assets/tips/tp11.png',
    title: 'Balance Control:',
    subTitle:
        'Keep an eye on your balance. A stable body position contributes to accurate and stable shooting.',
  ),
  TipsModel(
    image: 'assets/tips/tp12.png',
    title: 'Mental Focus:',
    subTitle:
        'Visualize successful shots and focus on positive aspects to boost confidence.',
  ),
  TipsModel(
    image: 'assets/tips/tp13.png',
    title: 'Training in Various Scenarios:',
    subTitle:
        'Practice shooting in different conditions - stationary, moving, and under pressure. This helps adapt to diverse game scenarios.',
  ),
  TipsModel(
    image: 'assets/tips/tp14.png',
    title: 'Consistent Practice:',
    subTitle:
        ' Regular training and practice enhance shooting skills. Become a master through continual improvement and experience.',
  ),
];
