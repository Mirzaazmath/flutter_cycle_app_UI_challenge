import 'package:cycle_app_ui/screens/add_to_cart.dart';
import 'package:cycle_app_ui/utils/animation_util.dart';
import 'package:flutter/material.dart';

import '../utils/text_utlis.dart';
class DetailTwoScreen extends StatelessWidget {
  const DetailTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          children: [
            ShowUpAnimation(
              delay: 100,
              child: Container(

                height: MediaQuery.of(context).size.height*0.45,
                alignment: Alignment.topRight,
                color: Theme.of(context).primaryColor,
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShowUpAnimation(delay: 200,child: TextUtil(text: "Bicycle",weight: true,size: 17,),),
                    const SizedBox(height: 20,),
                    ShowUpAnimation(delay: 300,child: TextUtil(text: "Minimal design,\nenhanced riding",weight: true,size: 30,),),
                    const SizedBox(height: 20,),
                    ShowUpAnimation(delay:400,child: TextUtil(text: "You will find a generous helping of ECLAT aftermarket parts including the super wide 38mm Trippin rims,low profile Slash pedal and even the new Bios Pivotal seat base,if that wasn't enough,the Crysis",size: 14,weight: true,)),

                  ],
                ),

              ),
            ),
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10,right: 30),
                  height: MediaQuery.of(context).size.height*0.55,
                  width: double.infinity,
                  child:Column(
                    children: [
                     ShowUpAnimation(
                       delay:500,
                       child:  TextUtil(text: "world's most advanced & smart road bike.",size: 28,weight: true,color: Colors.grey.shade400,),),
                      const SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ShowUpAnimation(delay:600,child: TextUtil(text: "Steel ball bearing\n3/8 axie 28H",size: 13,weight: true,)),),
                      const SizedBox(height: 30,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ShowUpAnimation(
                          delay: 700,
                            child: TextUtil(text: "Mongoose Hi-Ten\n 22.5'6' 22.2mm\nclamp",size: 13,weight: true,)),)

                    ],

                  ) ,

                ),
                Positioned(
                  bottom: -160,
                  child: SizedBox(
                    height: 350,
                    child: Hero(
                        tag: "Bike",
                        child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddToCartScreen()));
                            },
                            child: Image.asset("assets/cycle.png"))),
                  ),
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}
