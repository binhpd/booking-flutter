import 'package:flutter/cupertino.dart';
import 'package:hello_project/screens/app_layout.dart';
import 'package:hello_project/utils/app_style.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          color: Styles.primaryColor, borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/room/room2.jpg"))),
          )
        ],
      ),
    );
  }
}
