import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hello_project/utils/app_style.dart';
import 'package:hello_project/widgets/layout_builder_widget.dart';
import 'package:hello_project/widgets/thick_container.dart';

import 'app_layout.dart';

enum TicketThemeType { light, color }

class TicketView extends StatelessWidget {
  final TicketThemeType theme;
  final Map<String, dynamic> ticket;

  const TicketView({Key? key, required this.ticket, required this.theme})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(180),
      child: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            /*
            showing the blue part of the card/ticket
             */
            Container(
              decoration: BoxDecoration(
                  color: (theme == TicketThemeType.color)
                      ? Color(0xFF526799)
                      : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: (theme == TicketThemeType.color)
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: (theme ==
                                                        TicketThemeType.color)
                                                    ? Colors.white
                                                    : Colors.blue.shade500),
                                          ),
                                        )),
                              );
                            },
                          ),
                        ),
                        Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded,
                                    color: (theme == TicketThemeType.color)
                                        ? Colors.white
                                        : Colors.blue.shade500)))
                      ])),
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'],
                          style: (theme == TicketThemeType.color)
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3),
                    ],
                  ),
                  Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        height: 20,
                        child: Text(ticket['from']['name'],
                            style: (theme == TicketThemeType.color)
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: (theme == TicketThemeType.color)
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['name'],
                            textAlign: TextAlign.end,
                            style: (theme == TicketThemeType.color)
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: (theme == TicketThemeType.color)
                  ? Styles.orangeColor
                  : Colors.white,
              child: Row(
                children: const [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: AppLayoutBuilderWidget(sections: 15, theme: TicketThemeType.light, width: 5,),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  )
                ],
              ),
            ),
            /*
            showing the orange of the card/ticket
             */
            Container(
              decoration: BoxDecoration(
                  color: (theme == TicketThemeType.color)
                      ? Styles.orangeColor
                      : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "1 MAY",
                        style: (theme == TicketThemeType.color)
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      const Gap(5),
                      Text(
                        "DATE",
                        style: (theme == TicketThemeType.color)
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        ticket['departure_time'],
                        style: (theme == TicketThemeType.color)
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      const Gap(5),
                      Text(
                        "Departure time",
                        style: (theme == TicketThemeType.color)
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        ticket['date'],
                        style: (theme == TicketThemeType.color)
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      const Gap(5),
                      Text(
                        ticket['number'].toString(),
                        style: (theme == TicketThemeType.color)
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      )
                    ],
                  )
                ],
              ),
            )
            /*
            bottom part of the orage card/ticket
             */
          ],
        ),
      ),
    );
  }
}
