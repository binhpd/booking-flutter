import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hello_project/screens/app_layout.dart';
import 'package:hello_project/screens/ticket_view.dart';
import 'package:hello_project/utils/app_style.dart';
import 'package:hello_project/utils/hotel_list.dart';
import 'package:hello_project/widgets/layout_builder_widget.dart';
import 'package:barcode_widget/barcode_widget.dart';

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
              const Gap(20),
              TicketTab(firstTab: "Tickets", secondTab: "Hotels"),
              const Gap(20),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: TicketView(
                  ticket: ticketList[0],
                  theme: TicketThemeType.light,
                ),
              ),
              SizedBox(
                height: 1,
              ),

              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Gap(AppLayout.getHeight(20)),
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
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    theme: TicketThemeType.light,
                    width: 6,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnInfo(
                          alignment: CrossAxisAlignment.start,
                          firstText: "23183816381263172",
                          secondText: "Number of E-ticket"),
                      ColumnInfo(
                          alignment: CrossAxisAlignment.end,
                          firstText: "B2FSF34",
                          secondText: "Booking Code")
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    theme: TicketThemeType.light,
                    width: 6,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/visa.png",
                                fit: BoxFit.contain,
                                width: 50,
                                height: 40,
                              ),
                              Text("***3455")
                            ],
                          ),
                          Gap(5),
                          Text("Payment method", style: Styles.headLineStyle4)
                        ],
                      ),
                      ColumnInfo(
                          alignment: CrossAxisAlignment.end,
                          firstText: "\$249.9",
                          secondText: "Price"),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                ]),
              ),
              SizedBox(height: 1,),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                ),
                padding: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/hiccup',
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                child: TicketView(ticket: ticketList[0], theme: TicketThemeType.color,),
              )
            ],
          )
        ],
      ),
    );
  }
}
