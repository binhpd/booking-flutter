import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_project/screens/app_layout.dart';
import 'package:hello_project/widgets/ColumnInfo.dart';

class TicketTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;

  const TicketTab({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
          padding: const EdgeInsets.all(3.5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFF4F6FD)),
          child: Row(
            children: [
              Container(
                  width: size.width * 0.44,
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getWidth(8)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(50)),
                      color: Colors.white),
                  child: Center(
                    child: Text(firstTab),
                  )),
              Container(
                  width: size.width * 0.44,
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getWidth(8)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(50)),
                      color: Colors.transparent),
                  child: Center(
                    child: Text(secondTab),
                  ))
            ],

          )),
    );
  }
}
