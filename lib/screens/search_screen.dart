import 'package:air_ticket_flutter/widgets/double_text_widget.dart';
import 'package:flutter/material.dart';

import '../utils/app_style.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../widgets/text_icon_widget.dart';

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
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular((AppLayout.getHeight(50)))),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("Airline tickets")),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular((AppLayout.getHeight(50)))),
                      color: Colors.transparent,
                    ),
                    child: Center(child: Text("Hotels")),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: const Color(0xFFF4F6FD),
              ),
            ),
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
              color: const Color(0xFF1130CE),
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
                height: AppLayout.getWidth(400),
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
                            color: const Color(0xFF3CB8B8),
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
                            border:
                                Border.all(width: 18, color: Color(0xFF189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
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
