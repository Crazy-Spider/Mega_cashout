import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mega_cashout/theme/colour.dart';
class VipScreen extends StatelessWidget {
  const VipScreen({Key? key}) : super(key: key);

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
                const Gap(40),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Join our whatsapp group to get vip odds ", style: Styles.textPrimary,),
                        const Gap(10),
                        Text("https://chat.whatsapp.com/KpNY9YO1sro8UoKuPxpSyo", style: Styles.textPrimary,),
                        const Gap(10),
                        Text("or send us an email", style: Styles.textPrimary,),
                        const Gap(10),
                        Text("megacashout.tips@gmail.com", style: Styles.textPrimary,),
                      ],
                    ),

                  ],

                ),
              ],
            ),
          )
        ],

      ),
    );
  }
}
