import 'package:cycle_app_ui/utils/animation_util.dart';
import 'package:cycle_app_ui/utils/text_utlis.dart';
import 'package:flutter/material.dart';
class AddToCartScreen extends StatelessWidget {
  const AddToCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Container(
            padding:const  EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height*0.45,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShowUpAnimation(
                    delay: 200,
                      child: TextUtil(text: "Bicycle",weight: true,size: 17,)),
                  const SizedBox(height: 20,),
                  Expanded(child: Hero(
                      tag: "Bike",
                      child:Center(
                        child: SizedBox(
                          height: 300,
                          width: 280,
                          child:  Image.asset("assets/cycle.png",fit: BoxFit.fill,),
                        ),
                      ))),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.55,
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShowUpAnimation(delay:300,
                    child: TextUtil(text: "BMW K30",weight: true,size: 30,)),
              const   Spacer(),

                ShowUpAnimation(
                  delay: 400,
                    child: TextUtil(text: "The Top Fuel 9.9 xx1 AXS is build for speed and capability on any terrain.",size: 13,weight: true,)),
                const   Spacer(),
                ShowUpAnimation(
                  delay: 500,
                    child: TextUtil(text: "The Cult Control bike is a mid range BMX that is put together with a range of aftermarket parts.The 20.75tt frame is made from steel with a 100% chromo front triangle,Chromoly forks & bars ",size: 14,weight: true,)),
                const   Spacer(),
                ShowUpAnimation(
                  delay: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtil(text: "\$999",size: 40,weight: true,),
                      TextUtil(text: "ADD TO CART",weight: true,size: 15,),
                    ],
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
