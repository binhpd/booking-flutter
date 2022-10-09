import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:hello_project/utils/app_style.dart';

class ColumnInfo extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  const  ColumnInfo({Key? key, required this.alignment, required this.firstText, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: Styles.headLineStyle3,),
        Gap(5),
        Text(secondText, style: Styles.headLineStyle4)
      ],
    );
  }
}
