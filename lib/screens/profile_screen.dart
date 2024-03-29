import 'package:air_ticket_flutter/widgets/column_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getWidth(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(100),
                width: AppLayout.getWidth(100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/img_1.png'),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle1,
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Text(
                    'New-York',
                    style: Styles.headLineStyle4,
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    height: AppLayout.getHeight(40),
                    width: AppLayout.getWidth(180),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFCDD2).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Gap(AppLayout.getHeight(5)),
                        Container(
                          height: AppLayout.getHeight(30),
                          width: AppLayout.getWidth(30),
                          decoration: BoxDecoration(
                              color: const Color(0xFF607D8B),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Icon(
                            Icons.shield_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          'Premium status',
                          style: Styles.headLineStyle3
                              .copyWith(color: Color(0xFF607D8B)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(30)),
              Text(
                'Edit',
                style: TextStyle(
                    color: Colors.blue, fontSize: AppLayout.getHeight(16)),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(30)),
          Container(
            height: AppLayout.getHeight(100),
            width: size.width * 0.99,
            decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Stack(
              children: [
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 25, color: Colors.black.withOpacity(.5)),
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gap(AppLayout.getHeight(20)),
                    Container(
                      height: AppLayout.getHeight(60),
                      width: AppLayout.getWidth(60),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.lightbulb_rounded,
                        color: Styles.primaryColor,
                        size: 35,
                      ),
                    ),
                    Gap(AppLayout.getHeight(5)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You`ve got a new award',
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'You have 50 flights in a year',
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(30)),
          Text(
            'Accumulated miles',
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(30)),
          Text(
            '165480',
            textAlign: TextAlign.center,
            style: Styles.headLineStyle1.copyWith(fontSize: 50),
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Miles accured',
                style: Styles.headLineStyle3,
              ),
              Text(
                '23 May 2022',
                style: Styles.headLineStyle3,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppColumnLayout(
                firstText: "23 042",
                secondText: "Miles",
              ),
              AppColumnLayout(
                firstText: "Airline Co",
                secondText: "Received from",
                isLeft: false,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppColumnLayout(
                firstText: "24",
                secondText: "Miles",
              ),
              AppColumnLayout(
                firstText: "McDonal's",
                secondText: "Received from",
                isLeft: false,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppColumnLayout(
                firstText: "58 986",
                secondText: "Miles",
              ),
              AppColumnLayout(
                firstText: "Exuma",
                secondText: "Received from",
                isLeft: false,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            'How to get more miles',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.blue, fontSize: AppLayout.getHeight(16)),
          ),
        ],
      ),
    );
  }
}
