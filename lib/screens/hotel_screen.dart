import 'package:air_ticket_flutter/utils/app_layout.dart';
import 'package:air_ticket_flutter/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(320),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(15),
          vertical: AppLayout.getHeight(17)),
      margin: EdgeInsets.only(
          right: AppLayout.getHeight(17), top: AppLayout.getHeight(5)),
      decoration: BoxDecoration(
        color: Styles.primaryColor.withOpacity(.8),
        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: AppLayout.getHeight(150),
              width: AppLayout.getWidth(170),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(5)),
                color: Styles.primaryColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/${hotel['image']}'),
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            '${hotel['place']}',
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Gap(AppLayout.getHeight(5)),
          Text(
            '${hotel['destination']}',
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(8)),
          Text(
            "\$'${hotel['price']}'/night",
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
