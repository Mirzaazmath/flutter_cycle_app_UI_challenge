import 'package:cycle_app_ui/screens/detail_two.dart';
import 'package:cycle_app_ui/utils/animation_util.dart';
import 'package:cycle_app_ui/utils/text_utlis.dart';
import 'package:flutter/material.dart';
class DetailOneScreen extends StatelessWidget {
  const DetailOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.5,
            child: Row(
              children: [
                 Expanded(child: SafeArea(
                   child: Padding(
                     padding: const EdgeInsets.all(20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShowUpAnimation(
                          delay: 200, child: TextUtil(text: "Bicycle",weight: true,size: 17,),),
                        const SizedBox(height: 20,),
                        ShowUpAnimation(delay: 300,child: TextUtil(text: "Super intelligent suspension",weight: true,size: 30,),),
                        const SizedBox(height: 20,),
                        ShowUpAnimation(delay: 400,child: TextUtil(text: "The Cult Control bike is a mid range BMX that is put together with a range of aftermarket parts.The 20.75tt frame is made from steel with a 100% chromo front triangle,Chromoly forks & bars ",size: 14,weight: true,),),

                      ],
                ),
                   ),
                 )),
                Hero(
                  tag:"Container",
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.5,
                    width: 70,
                    color: Theme.of(context).primaryColor,

                  ),
                )
              ],
            ),

          ),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                height: MediaQuery.of(context).size.height*0.5,
                width: double.infinity,
                alignment: Alignment.topRight,
                child: ShowUpAnimation(delay: 500,child: TextUtil(text: "Hi-Ten steel 16 '1'\nthreaded steerer\n3/8x100mm",weight: true,size: 14,),),
              ),
              Positioned(
                left: -90,
                child: SizedBox(
                  height: 300,
                  child: Hero(
                      tag: "Bike",
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailTwoScreen()));
                        },
                          child: Image.asset("assets/cycle.png"))),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
