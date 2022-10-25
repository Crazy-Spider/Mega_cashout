import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mega_cashout/screen/extra_screen.dart';
import 'package:mega_cashout/screen/fiveodds_screen.dart';
import 'package:mega_cashout/screen/tenodds_screen.dart';
import 'package:mega_cashout/screen/vip_screen.dart';
import 'package:mega_cashout/theme/colour.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(30),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome to ", style: Styles.headLineStyle2,),
                        const Gap(10),
                        Text("Mega Cashout", style: Styles.headLineStyle1,),
                      ],
                    ),

                  ],
                ),
              ],

            ),
          ),
          const Gap(30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    child: Text("5 Odds", style: Styles.headLineStyle3,),

                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> FiveScreen())
                      );

                    },
                  ),
                ),


                const Gap(20),
                Container(
                  child: ElevatedButton(
                    child: Text("10 Odds", style: Styles.headLineStyle3,),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> TenScreen())
                      );
                    },
                  ),
                ),
                const Gap(20),
                Container(
                  child: ElevatedButton(
                    child: Text("Extra Odds", style: Styles.headLineStyle3,),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> ExtraScreen())
                      );
                    },
                  ),
                ),
                const Gap(20),
                Container(
                  child: ElevatedButton(
                    child: Text("VIP", style: Styles.headLineStyle3,),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> VipScreen())
                      );
                    },
                  ),
                )

              ],
            ),
          )


        ],
      ),
    );
  }
}
