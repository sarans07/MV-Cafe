import 'package:coffee/pages/bottom.dart';
import 'package:coffee/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/co.png"),
          )
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.63,
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  height: MediaQuery.of(context).size.height*0.35,
                  width: MediaQuery.of(context).size.width*1,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Get Started",
                        style: sideheadings,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Find the best coffee for you",
                          style: pageheadings,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Get.to(bottom());
                            },
                            child: Text("Skip now",
                            style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 14),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Get.to(bottom());
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.05,
                              width: MediaQuery.of(context).size.width*0.2,
                              decoration: BoxDecoration(
                                color: Colors.orange[600],
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(
                                child: Text("Next",
                                style: buttontext,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
