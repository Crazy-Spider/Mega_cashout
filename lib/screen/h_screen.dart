import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:mega_cashout/theme/colour.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {

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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    child: Text("5 Odds", style: Styles.headLineStyle3,),
                    onPressed: () {
                      setState((){

                      });
                    },
                  ),
                ),


                const Gap(20),
                Container(
                  child: ElevatedButton(
                    child: Text("10 Odds", style: Styles.headLineStyle3,),
                    onPressed: () {},
                  ),
                ),
                const Gap(20),
                Container(
                  child: ElevatedButton(
                    child: Text("Extra Odds", style: Styles.headLineStyle3,),
                    onPressed: () {},
                  ),
                ),
                const Gap(20),
                Container(
                  child: ElevatedButton(
                    child: Text("VIP", style: Styles.headLineStyle3,),
                    onPressed: () {},
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
