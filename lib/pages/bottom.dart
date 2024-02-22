import 'package:coffee/pages/home.dart';
import 'package:coffee/pages/items.dart';
import 'package:coffee/textstyle.dart';
import 'package:flutter/material.dart';


class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {

  int _selectedIndex =0;
  List pages =[
    home(),
    productsdetails(),
    Center(child: Text("Cart Details Will be Shown",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)
    )),
    Center(child: Text("Profile Will be Shown",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)
    )),

  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    }) ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: coffee,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,),
              label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,),
              label: "Favorite"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.local_grocery_store_outlined,),
              label: "Cart"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person,),
              label: "Profile"
          ),

        ],
      ),
    );
  }
}