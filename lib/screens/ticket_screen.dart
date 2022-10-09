import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hello_project/screens/app_layout.dart';
import 'package:hello_project/screens/ticket_view.dart';
import 'package:hello_project/utils/app_style.dart';
import 'package:hello_project/utils/hotel_list.dart';
import 'package:hello_project/widgets/layout_builder_widget.dart';

import '../widgets/ColumnInfo.dart';
import '../widgets/TicketTab.dart';

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
            padding: EdgeInsets.all(20),
            children: [
              Gap(40),
              Text("Tickets", style: Styles.headLineStyle1),
              Gap(20),
              TicketTab(firstTab: "Tickets", secondTab: "Hotels"),
              Gap(20),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: TicketView(
                  ticket: ticketList[0],
                  theme: TicketThemeType.light,
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnInfo(
                          alignment: CrossAxisAlignment.start,
                          firstText: "Flutter DB",
                          secondText: "Passenger"),
                      ColumnInfo(
                          alignment: CrossAxisAlignment.end,
                          firstText: "Flutter DB",
                          secondText: "Passenger")
                    ],
                  ),
                  const AppLayoutBuilderWidget(sections: 6, theme: TicketThemeType.color, width: 6,)
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
