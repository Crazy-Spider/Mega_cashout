import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gap/gap.dart';
import '../theme/colour.dart';
class ExtraScreen extends StatelessWidget {
  const ExtraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('extra').snapshots(),
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          else{
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index){
                  DocumentSnapshot myGames = snapshot.data!.docs[index];
                  return Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            const Gap(30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${myGames['game']}', style: Styles.headLineStyle2,),
                                    Text('${myGames['option']}', style: Styles.headLineStyle4,),
                                  ],
                                ),
                                Container(
                                  child: Text('${myGames['odd']}', style: Styles.headLineStyle4,),
                                ),
                                Container(
                                  child: Text('${myGames['date']}', style: Styles.textPrimary,),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),


                    ],

                  );

                }
            );
          }

        },

      ),
    );
  }
}
