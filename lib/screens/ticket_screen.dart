import 'package:air_ticket_flutter/screens/ticket_view.dart';
import 'package:air_ticket_flutter/utils/app_info_list.dart';
import 'package:air_ticket_flutter/utils/app_layout.dart';
import 'package:air_ticket_flutter/utils/app_style.dart';
import 'package:air_ticket_flutter/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/column_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
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
                Gap(AppLayout.getHeight(20)),
                const AppTicketTabs(
                    firstTab: "Upcoming", secondTab: "Previous"),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(10)),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  margin: EdgeInsets.only(left: 10, right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: "Samrat",
                            secondText: "Passenger",
                          ),
                          Gap(AppLayout.getHeight(30)),
                          AppColumnLayout(
                            firstText: "5598 652236",
                            secondText: "passport",
                            isLeft: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: AppLayout.getWidth(5),
                                height: AppLayout.getHeight(1),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: "0033 555 99657",
                            secondText: "Number of E-ticket",
                            isLeft: true,
                          ),
                          Gap(AppLayout.getHeight(30)),
                          AppColumnLayout(
                            firstText: "B2SH96",
                            secondText: "Booking code",
                            isLeft: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(30)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: "",
                            secondText: "Payment method",
                            isImage: true,
                          ),
                          Gap(AppLayout.getHeight(30)),
                          AppColumnLayout(
                            firstText: ".\$356.99",
                            secondText: "price",
                            isLeft: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(30)),
                      ClipRRect(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(15)),
                        child: BarcodeWidget(
                          data: 'https://github.com/its-asaduzzaman',
                          barcode: Barcode.code128(),
                          drawText: false,
                          height: 70,
                          color: Styles.textColor,
                          width: double.infinity,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(10)),
                  child: TicketView(
                    ticket: ticketList[0],
                  ),
                ),
              ],
            ),
            Positioned(
              left: AppLayout.getHeight(19),
              top: AppLayout.getHeight(299),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Styles.textColor, width: 2)),
                    child: CircleAvatar(
                      maxRadius: 4,
                      backgroundColor: Styles.textColor,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: AppLayout.getHeight(24),
              top: AppLayout.getHeight(299),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Styles.textColor, width: 2)),
                    child: CircleAvatar(
                      maxRadius: 4,
                      backgroundColor: Styles.textColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
