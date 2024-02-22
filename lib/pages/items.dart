import 'package:coffee/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class productsdetails extends StatefulWidget {
  const productsdetails({super.key});

  @override
  State<productsdetails> createState() => _productsdetailsState();
}

class _productsdetailsState extends State<productsdetails> {

  bool isExpanded = true;

  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.38,
                      width: MediaQuery.of(context).size.width*1,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(
                                1.0,
                                1.0,
                              ),
                            )
                          ],
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: NetworkImage("https://cdn.shopify.com/s/files/1/2627/1860/files/best-instant-coffee-consumer-reports-1_8b62c17f-80ad-490f-9001-911278099929_large.jpg?v=1553220766"),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                    Positioned(
                        top: 30,
                        left: 30,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white38
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 9.0,top: 3),
                            child: InkWell(
                                onTap: (){
                                  Get.back();
                                },
                                child: Icon(Icons.arrow_back_ios,size: 30,)),
                          ),
                        )),
                    Positioned(
                        bottom: 30,
                        left: 30,
                        child: Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 9.0,top: 3),
                            child: Text(" ★ 4.5",
                              style: TextStyle(color: Colors.yellow[600],fontSize: 18,fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Espresso",
                        style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("With Milk     ",
                          style: sideheadings,
                          ),
                        )
                      ],
                    ),
                    Text("\$ 6.75",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Description",
                  style: tittletext,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  isExpanded
                      ? 'Espresso is a concentrated coffee beverage brewed by forcing hot water through finely-ground coffee. It is known for its strong flavor and rich, creamy layer on top, called crema. The intense taste of espresso is achieved by using a small amount of water and finely-ground coffee beans. It serves as the base for various coffee drinks like lattes, cappuccinos, and Americanos. Espresso is a delicious concentrated form of coffee, served in shots and its often the coffee base of many other beverages, such as cappuccino, latte, americano and macchiato.'
                      : 'Espresso is a concentrated coffee beverage brewed by forcing hot water through finely-ground coffee. It is known for its strong flavor and rich, creamy layer on top, called crema. The intense taste of espresso is achieved by using a small amount of water and finely-ground coffee beans. It serves as the base for various coffee drinks like lattes, cappuccinos, and Americanos.',
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,fontSize: 20),
                  maxLines: isExpanded ? 3 : 10,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      isExpanded ? 'Read More' : 'Read Less',
                      style: sideheadings
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Coffee Size",style: tittletext,)),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.13,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(
                                1.0,
                                1.0,
                              ),
                            )
                          ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange[50],
                        image: DecorationImage(
                          image: AssetImage("assets/cof.png"),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.17,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(
                                1.0,
                                1.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: coffee,
                          image: DecorationImage(
                              image: AssetImage("assets/cof.png"),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.22,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(
                                1.0,
                                1.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange[50],
                          image: DecorationImage(
                              image: AssetImage("assets/cof.png"),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        InkWell(
                          onTap: decrementQuantity,
                          child: CircleAvatar(
                            radius: 15,
                            child: Text("-"),
                          ),
                        ),
                        Text(
                          '$quantity',
                          style: TextStyle(fontSize: 24),
                        ),
                        InkWell(
                          onTap: incrementQuantity,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.black,
                            child: Icon(Icons.add,color: Colors.white,size: 12,)
                          ),
                        ),
                    ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(
                          1.0,
                          1.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text("Add to bag",
                        style: TextStyle(color: Colors.white,fontSize: 25),
                        )
                      ],
                    ),
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
