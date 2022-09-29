import 'package:booktickets/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(10)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 8,
                width:8,
                decoration:BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 image:  const DecorationImage(
                   image: AssetImage(
                    'assets/assets/images/img_1.png'
                  )
                ),
              ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start ,
                children: [
                Text("Book Tickets", style: Styles.headLineStyle1,),
                  Gap(AppLayout.getHeight(2)),
                  Text("New- York ", style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500
                ),
                ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFFE4F3)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3), vertical: AppLayout.getHeight(13) ),

                    child:
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                shape: BoxShape.circle,
                  color: Color(0xFF526799)
                        ),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,
                          )
    ),
                        Gap(AppLayout.getHeight(5)),
                        const Text("Premium status", style: TextStyle(
                          color: Color(0xFF526799), fontWeight: FontWeight.w600,
                        ),
                        ),
                        Gap(AppLayout.getHeight(8)),


    ]
    ),




                  ),
              ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print("You are Tapped");
                    },
                      child:
                      Text("Edit",style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),)),

                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade300,),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
               Container(
                 height: AppLayout.getHeight(90),
                 width: double.infinity,

                 decoration: BoxDecoration(
                   color: Styles.primaryColor,
                   borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),

                 ),
               ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Color(0xFF264CD2)),


                  )

              ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25),
                vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primaryColor , size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                     Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You\'v got a new reward", style: Styles.headLineStyle2.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white
                        ),),
                        Text("you have 95 flights in a year", style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9),
                          fontSize: 16,

                        ),)
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text("Accumulated Miles", style: Styles.headLineStyle2,),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
              color: Styles.bgColor,
              boxShadow:[ BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 1,
                spreadRadius: 1,
              )
                ],
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  "192802", style: TextStyle(
                  fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600,
                ),),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued", style: Styles.headLineStyle4.copyWith(fontSize: 16,),),
                    Text("11 May 2022", style: Styles.headLineStyle4.copyWith(fontSize: 16,),)


                  ],
                ),
                Gap(AppLayout.getHeight(4)),
                Divider(color: Colors.grey.shade300,),
                Gap(AppLayout.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                    AppColumnLayout(firstText: "23 042",
                    secondText: "Miles",
                    alignment: CrossAxisAlignment.start, isColor:false,
                    ),

                    AppColumnLayout(firstText: "Airline CO",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end, isColor:false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                AppLayoutBuilderWidget(sections: 12,isColor: false,),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start, isColor:false,
                    ),

                    AppColumnLayout(firstText: "McDonald\'s",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end, isColor:false,
                    ),

                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const AppLayoutBuilderWidget(sections: 12, isColor: false),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                AppColumnLayout(firstText: "52 340",
                  secondText: "Miles",
                  alignment: CrossAxisAlignment.start, isColor:false,
                ),

                AppColumnLayout(firstText: "plp",
                  secondText: "Received from",
                  alignment: CrossAxisAlignment.end, isColor:false,
                ),
    ]
    ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          InkWell(
            onTap: ()=> print("you are Tapped"),
            child: Center(
              child: Text("How to get more miles", style: Styles.textStyle.copyWith(color:
              Styles.primaryColor,
              fontWeight: FontWeight.w500,),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
