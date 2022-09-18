import 'package:air_ticket_flutter/utils/app_layout.dart';
import 'package:air_ticket_flutter/utils/app_style.dart';
import 'package:air_ticket_flutter/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        body: Stack(
      children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getWidth(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              'Tickets',
              style: Styles.headLineStyle1,
            ),
            Gap(AppLayout.getHeight(40)),
            AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous")
          ],
        )
      ],
    ));
  }
}
