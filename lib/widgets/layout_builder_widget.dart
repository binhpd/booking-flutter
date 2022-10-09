import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_project/utils/app_style.dart';

import '../screens/ticket_view.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int sections;
  final TicketThemeType theme;
  final double width;

  const AppLayoutBuilderWidget({Key? key, required this.sections, required this.theme, this.width = 3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context,
            BoxConstraints constraints) {
          return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: List.generate(
                (constraints.constrainWidth() / sections).floor(),
                    (index) => SizedBox(
                  width: width,
                  height: 1,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: theme == TicketThemeType.color ? Colors.white : Colors.grey.shade300
                  ),
                )),
          ));
        }
      );
  }
}
