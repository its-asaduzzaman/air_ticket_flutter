import 'package:flutter/material.dart';

import '../utils/app_style.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are\nyou looking for',
            style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),
          )
        ],
      ),
    );
  }
}
