import 'package:flutter/material.dart';
import 'package:project1/src/Pages/Logins.dart';
import 'package:project1/src/Pages/Signup_page.dart';


class SignInPage extends StatefulWidget{

  @override
  _SignInPageState createState() => _SignInPageState();

}

class _SignInPageState extends State<SignInPage>{

  bool _toggleVisiblity = true;

 Widget _buildEmailTextField(){
   return TextFormField(

     decoration: InputDecoration(
       hintText: "Your email or phone number ",
       hintStyle: TextStyle(color: Colors.grey),
     ),
   );
 }
 
 Widget _buildPasswordTextField(){
   return TextFormField(

     decoration: InputDecoration(
       hintText: "Password",
       hintStyle: TextStyle(color: Colors.grey),
       suffixIcon: IconButton(
         onPressed: (){
           _toggleVisiblity = !_toggleVisiblity;
         },
         icon :Icon(Icons.visibility_off),
       ),
     ),
     obscureText: _toggleVisiblity,
    
   );
 }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Padding(
         padding: EdgeInsets.symmetric(horizontal: 10.0) ,
         
         
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
              Text("FoodOFi", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,color: Colors.black),),
              Text("Sign In",style: TextStyle(fontSize: 20),),
           
           SizedBox(height: 50,),
           SizedBox(height: 20,),

           Card(
             elevation: 0.0,
             child: Padding(
                padding: EdgeInsets.all(20.0),
                 child: Column(
                 children: <Widget>[

                   _buildEmailTextField(),
                   _buildPasswordTextField(),
                   
                 ],
                ),
             ) ,
             
             
             ),
             GestureDetector(
               onTap:(){
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Logins()));
               }, 
                 child: Container(
                 
                 height: 50,
                 decoration: BoxDecoration(
                   
                   color: Colors.blueAccent,
                   borderRadius: BorderRadius.circular(30)
                 ),
                 child: Center(child: Text("Sign In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),),
                 
               ),
             ),
           Divider(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
             Text("Dont have an account?",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
             GestureDetector(
               onTap: (){
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignUpPage()));
               },
               child: 
               Text(
                 
                 "  Sign Up", 
                 style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 18, 
                  fontWeight: FontWeight.bold),
                  )
                ),
           ],
           ),
           SizedBox(height: 5,),
           Row(
             
             mainAxisAlignment : MainAxisAlignment.center,
             children: <Widget>[

               Text("Forgotten Password?", style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 16),)
           ],
           ),
           ],
          ),
         
         ),
     );
  }
}