import 'package:coffee/models/datamodel.dart';
import 'package:coffee/pages/items.dart';
import 'package:coffee/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  int selectedIndex = 1;

  final List<String> items = ["Filter", "Espresso", "Cappuccino", "Cold", "Chai"];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15),
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://media.istockphoto.com/id/874475124/photo/background-black-and-white-in-half.jpg?s=612x612&w=0&k=20&c=U75KgDrKejyGOlngWBrBmh4TddCQ69E3lzmfxwPr7sg="),
            fit:BoxFit.fill
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Search Box
                    Expanded(
                      child: Container(
                        height: 50,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                            filled: true,
                            fillColor: Colors.white24,
                            hintText: 'Search cafe or a coffee...',
                            hintStyle: TextStyle(color: coffee),
                            suffixIcon: CircleAvatar(
                              radius: 25,
                              backgroundColor: coffee,
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0), // Add some space between search box and profile photo
                    // Profile Photo
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHDRlp-KGr_M94k_oor4Odjn2UzbAS7n1YoA&usqp=CAU"), // Replace with your image asset
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Good Morning",
                    style: pageheadings,
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Grab your first coffee in this morning",
                    style: subheadings,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index; // Set the selected index on tap
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: selectedIndex == index ? coffee : Colors.white12,
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (index == 0) Icon(Icons.filter_list_outlined, color: Colors.white), // Display filter icon for the first container
                                  SizedBox(width: index == 0 ? 8.0 : 0), // Add some space between icon and text
                                  Text(
                                    items[index],
                                    style: TextStyle(
                                      color: selectedIndex == index ? Colors.white : Colors.white70, // Change color for selected item
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lis.length,
                    itemBuilder:(BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          height: 300,
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: InkWell(
                            onTap: (){
                              Get.to(productsdetails());
                            },
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 100,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      height: 184,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black12),
                                        borderRadius: BorderRadius.circular(30)
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 60,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(lis[index].text,
                                              style: itemtext,
                                              ),
                                              Text("★ ${lis[index].ratings}",
                                              style: TextStyle(color: Colors.yellow[600],fontSize: 22,fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(lis[index].text1,
                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black45),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("\$ ${lis[index].price}",
                                              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.orange[700],
                                                  borderRadius: BorderRadius.circular(15)
                                                ),
                                                  child: Icon(Icons.add,size: 45,color: Colors.white,))
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Positioned(
                                    top: 20,
                                    left: 20,
                                    child: Container(
                                      height: 130,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                        image: DecorationImage(
                                          image: NetworkImage(lis[index].image),fit: BoxFit.fill
                                        )
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Today's Deal",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  height: MediaQuery.of(context).size.height*0.15,
                  width: MediaQuery.of(context).size.width*1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.orange[50],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        height: MediaQuery.of(context).size.height*0.15,
                        width: MediaQuery.of(context).size.width*0.34,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQboMRVt7B8qewQxZIsrt-iULZXdbue9Z2wSg&usqp=CAU"),
                            fit: BoxFit.fill
                          )
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(" BigMac + Fries",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                          SizedBox(height: 10,),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text("★ 4.5               ",
                              style: TextStyle(color: Colors.yellow[600],fontSize: 18,fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Align(
                            alignment: Alignment.topLeft,
                            child: RichText(
                              text: TextSpan(
                                text: "₹ 12.75  ",
                                style: TextStyle(
                                    fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "₹20.52",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,color: Colors.black54
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[700],
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Icon(Icons.add,size: 60,color: Colors.white,)),
                      //SizedBox(width: 20,)
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
