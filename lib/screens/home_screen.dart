import 'package:cycle_app_ui/utils/animation_util.dart';
import 'package:cycle_app_ui/utils/text_utlis.dart';
import 'package:flutter/material.dart';

import 'detail_one.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.7,
              alignment: Alignment.topRight,
              child:
              Hero(
                tag: "Container",
                child: Container(
                  margin:const  EdgeInsets.only(left: 30),
                  height: MediaQuery.of(context).size.height*0.5,
                  color: Theme.of(context).primaryColor,
                  width: double.infinity,

                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShowUpAnimation(
                            delay: 200,
                              child: TextUtil(text: "Bicycle",weight: true,size: 15,)),
                          const SizedBox(height: 10,),
                          ShowUpAnimation(
                            delay: 300,
                              child: TextUtil(text: "BMW K30",weight: true,size: 35,))
                        ],
                      ),
                    ),
                  ),

                ),
              ),
            ),
            Positioned(
              bottom: 0,
                left: -60,
                child: ShowUpAnimation(
                  delay: 400,
                  child: SizedBox(
                    height: 300,

                      child: Hero(
                        tag: "Bike",
                          child: Image.asset("assets/cycle.png"))),
                ))
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.3,
          padding: const EdgeInsets.only(left: 30),
          child: ShowUpAnimation(
            delay: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextUtil(text: "Amazing Speed.",size: 32,weight: true,),
                TextUtil(text: "Incredible Power.",size: 32,weight: true,),
                 const  SizedBox(height: 20,),
                TextUtil(text: "The Top Fuel 9.9 xx1 AXS is build for speed and capability on any terrain.",size: 13,),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailOneScreen()));                  },icon: const Icon(Icons.arrow_forward,size: 40,),),),
                ),
                const  SizedBox(height: 20,),

              ],
            ),
          ),
        )
      ],
    ),

    );
  }
}
