import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/route_manager.dart';
import 'package:hello_project/screens/app_layout.dart';
import 'package:hello_project/utils/app_style.dart';
import 'package:hello_project/widgets/DoubleTextWidget.dart';
import 'package:hello_project/widgets/app_icon_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(10),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are you \nlooking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          FittedBox(
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
                          child: Text("Airline tickets"),
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
                          child: Text("Hotels"),
                        ))
                  ],
                )),
          ),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(18),
                vertical: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                color: Color(0xD91130CE)),
            child: Center(child: Text("Find tickets", style: Styles.textStyle.copyWith(color: Colors.white)))
          ),
          Gap(AppLayout.getHeight(20)),
          DoubleTextWidget(bigText: "Upcoming", smallText: "View all"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width*0.44,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(12)),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getWidth(12)),
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage("assets/images/flight_seat.jpg")
                          )
                      )
                    ),
                    Gap(10),
                    Text("20% discount for .... Cong hoa xa hoi chu nghia viet nam", style: Styles.headLineStyle2)
                  ],

                ),
              ),
              Column(
                children: [
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(200),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(18))
                    ),
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text("Discount\nSurvey", style: Styles.headLineStyle1.copyWith(color: Colors.white),),
                        Gap(10),
                        Text("Taking survey about ours services and get discount", style: Styles.headLineStyle1.copyWith(color: Colors.white, fontSize: 18),),
                      ],
                    ),
                  ),
                  Gap(15),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(210),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18),),
                      color: const Color(0xFFEC6545)
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text("Take love", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white), textAlign: TextAlign.center,),
                        Gap(10),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(text: ":D", style: TextStyle(fontSize: 38)),
                            TextSpan(text: ":D", style: TextStyle(fontSize: 50)),
                            TextSpan(text: ":D", style: TextStyle(fontSize: 38)),
                          ]
                        ))
                      ],
                    ),
                  )
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}
