import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hello_project/utils/app_style.dart';
import 'package:hello_project/widgets/thick_container.dart';

import 'app_layout.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          children: [
            /*
            showing the blue part of the card/ticket
             */
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(child: Stack(
                          children: [
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white),
                                          ),
                                        )),
                              );
                            },
                          ),
                        ),
                        Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white)))
                      ])),
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text("LDN", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                    ],
                  ),
                  Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    SizedBox(width: 100, child: Text("New-york", style: Styles.headLineStyle4.copyWith(color: Colors.white )),),
                    Text("8:30PM", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    SizedBox(width: 100, child: Text("London", textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: Colors.white )),),
                  ],)
                ],
              ),
            ),
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration:
                    BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                      )
                    )),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(

                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(width: 5, height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white
                              ),
                            ),)),
                        );
                      }
                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration:
                    BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)
                        )
                    )),
                  )
                ],
              ),
            ) ,
            /*
            showing the orange of the card/ticket
             */
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("1 MAY", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      const Gap(5),
                      Text("DATE", style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                    ],
                  ),
                  Column(
                    children: [
                      Text("\08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      const Gap(5),
                      Text("Departure time", style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                    ],
                  ),
                  Column(
                    children: [
                      Text("3 MAY", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      const Gap(5),
                      Text("Number", style: Styles.headLineStyle4.copyWith(color: Colors.white),)
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
