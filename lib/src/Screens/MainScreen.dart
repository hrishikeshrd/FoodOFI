import 'package:flutter/material.dart';
import '../Pages/home_page.dart';
import '../Pages/order_page.dart';
import '../Pages/Profile.dart';
import '../Pages/Favorites.dart';

class MainScreen extends StatefulWidget{
  @override
  _MainScreenState createState() => _MainScreenState();
}


class _MainScreenState extends State<MainScreen>{
  int currentTabIndex = 0;
  List<Widget> pages;
  Widget currentPage;
  
  HomePage homePage;
  OrderPage orderPage;
  FavoritePage favoritePage;
  ProfilePage profilePage;

  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
   // profilePage = ProfilePage();
    //favoritePage = FavoritePage();

    pages = [homePage,orderPage];

    currentPage = homePage;
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        
        backgroundColor: Colors.white,
        onTap: (int index){
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed, 


        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("") 
            ),
         /* BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("") 
            ),*/
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text(""), 
            ),
         /*   BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("") 
            )*/
          
          
          ],
      ),
      body: currentPage,
        
    );
  }
}