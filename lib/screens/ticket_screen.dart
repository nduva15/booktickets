import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/App_info_list.dart';
import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';
import '../widgets/tickets_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor ,

      body: Stack(
        children:  [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
            children: [
            Gap (AppLayout.getHeight(40)),
            Text("Tickets", style: Styles.headLineStyle1),
            Gap (AppLayout.getHeight(20)),
            AppTicketTabs(firstTab: "Upcoming",secondTab: "Previous",),
            Gap (AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(1)),
              child: TicketView(ticket: ticketList[0],isColor: true,),
            ),
              Container(
                color: Colors.white,
                padding:  EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "Flutter Db",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "5221 364869",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                        )
                      ],
                    )
                  ],
                ),
              )

            
          ],
        ),
    ],
      ),


    );
  }
}
