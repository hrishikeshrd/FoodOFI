import 'package:flutter/material.dart';
import 'package:project1/src/Pages/Signin_page.dart';
import '../widgets/orderCards.dart';
import 'Signin_page.dart';


class OrderPage extends StatefulWidget{

  @override
  _OrderPageState createState() => _OrderPageState();

}

class _OrderPageState extends State<OrderPage>{

  @override 
  Widget build(BuildContext context) {
  return Scaffold(
      
      
      appBar: AppBar(
        
        title: Text("Here's Your Food Cart", style:TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      
      
      body: ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.0, ),
      scrollDirection: Axis.vertical,
      children: <Widget>[
          Column(
          children: <Widget>[
            OrderCard(), 
            OrderCard1(),
            
            
            ],
        ),
        SizedBox(height: 20,),
        Text("Cart Total : \u0024 1.8", style: TextStyle(fontSize: 18, color: Colors.black45 , fontWeight: FontWeight.bold),),
        SizedBox(height: 5.0,),
        Text("Discount : \u0024 0.18",style: TextStyle(fontSize: 18, color: Colors.black45 , fontWeight: FontWeight.bold),),
        SizedBox(height: 5.0,),
        Text("Tax : \u0024 0.16",style: TextStyle(fontSize: 18, color: Colors.black45 , fontWeight: FontWeight.bold),),
        SizedBox(height: 10.0,),
        Text("Subtotal : \u0024 1.7",style: TextStyle(fontSize: 18, color: Colors.black45 , fontWeight: FontWeight.bold),),
        SizedBox(height: 40,),
        
        GestureDetector(     
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
          },   
          child :Container(
          width: 230.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30)
          
          ),
          child: Center(child: Text("Proceed to Checkout", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),),
        ),
        )

      ],
    ),


  );
  
  
  }
}