import 'package:air_ticket_flutter/widgets/double_text_widget.dart';
import 'package:flutter/material.dart';

import '../utils/app_style.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../widgets/text_icon_widget.dart';
import '../widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
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
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          const AppTicketTabs(
            firstTab: "Airline tickets",
            secondTab: "Hotels",
          ),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded,
              text: 'Depart'
                  'ure'),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getWidth(18),
              horizontal: AppLayout.getHeight(15),
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF212121),
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
            ),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(
              bigText: 'Upcoming Flight', smallText: 'View all'),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getWidth(450),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getWidth(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/sit.jpg'))),
                    ),
                    Gap(AppLayout.getHeight(25)),
                    Text(
                      'Welcome to the website. If you re here, you re If you re here, you re',
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(15),
                            vertical: AppLayout.getHeight(15)),
                        height: AppLayout.getHeight(230),
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                            color: Styles.primaryColor,
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              'Take the survey about our services and get a '
                              'discount',
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 18, color: Colors.black.withOpacity(.5)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                        color: const Color(0xFFD32F2F),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18))),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: '😍',
                            style: TextStyle(fontSize: 35),
                          ),
                          TextSpan(
                            text: '🥰',
                            style: TextStyle(fontSize: 50),
                          ),
                          TextSpan(
                            text: '😁',
                            style: TextStyle(fontSize: 35),
                          ),
                        ]))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
