import 'package:flutter/material.dart';
import 'package:project1/src/Pages/Final.dart';


class Logins extends StatefulWidget{

  @override
  _LoginsState createState() => _LoginsState();
}

class  _LoginsState extends State<Logins>{
  int group=1;

Widget _buildaddressTextField(){
   return TextFormField(

     decoration: InputDecoration(
       hintText: "Tell us your address",
       hintStyle: TextStyle(color: Colors.grey),
     ),
   );
 }

 Widget _buildphTextField(){
   return TextFormField(

     decoration: InputDecoration(
       hintText: "+91",
       hintStyle: TextStyle(color: Colors.grey),
     ),
   );
 }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Login Succeeded!", style:TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
        body: Padding(
        padding: const EdgeInsets.all(10.0),
       child: Column(children: <Widget>[
             Text("Delivery Address", style: TextStyle(fontSize: 18),),
             Card(
             elevation: 0.0,
             child: Padding(
                padding: EdgeInsets.all(20.0),
                 child: Column(
                 children: <Widget>[

                   _buildaddressTextField(),
                  
                   
                 ],
                ),
             ) ,
             
             
             ),
             Text("Contact Number", style: TextStyle(fontSize: 18),), 
             Card(
             elevation: 0.0,
             child: Padding(
                padding: EdgeInsets.all(20.0),
                 child: Column(
                 children: <Widget>[

                   _buildphTextField(),
                  
                   
                 ],
                ),
             ) ,
             
             
             ),


            GestureDetector(
               onTap:(){
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => FinalPage()));
               }, 
                 child: Container(
                 
                 height: 50,
                 decoration: BoxDecoration(
                   
                   color: Colors.blueAccent,
                   borderRadius: BorderRadius.circular(30)
                 ),
                 child: Center(child: Text("Payment Options", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),),
                 
               ),
              ),
          ],

          
       ),        
        
        ),
    
    
    );
  }
}