import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final bool? isLeft;

  const AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      this.isLeft = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isLeft == true ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle3.copyWith(color: Colors.black),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondText,
          style: Styles.headLineStyle4,
        ),
      ],
    );
  }
}
