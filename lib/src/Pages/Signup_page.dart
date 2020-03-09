import 'package:flutter/material.dart';
import 'package:project1/src/Pages/Signin_page.dart';

class SignUpPage extends StatefulWidget{

  @override
  _SignUpPageState createState() => _SignUpPageState();

}

class _SignUpPageState extends State<SignUpPage>{

  bool _toggleVisiblity = true;

 Widget _buildEmailTextField(){
   return TextFormField(

     decoration: InputDecoration(
       hintText: "Your email or phone number",
       hintStyle: TextStyle(color: Colors.grey),
     ),
   );
 }

  Widget _buildUsernameTextField(){
   return TextFormField(

     decoration: InputDecoration(
       hintText: "Username",
       hintStyle: TextStyle(color: Colors.grey),
     ),
   );
 }
 
 Widget _buildPasswordTextField(){
   return TextFormField(

     decoration: InputDecoration(
       hintText: "New Password",
       hintStyle: TextStyle(color: Colors.grey),
       /*suffixIcon: IconButton(
         onPressed: (){
           _toggleVisiblity = !_toggleVisiblity;
         },
         icon :Icon(Icons.visibility_off),
       ),*/
     ),
     obscureText: _toggleVisiblity,
    
   );
 }

  Widget _buildConfirmPasswordTextField(){
   return TextFormField(

     decoration: InputDecoration(
       hintText: "Confirm Password",
       hintStyle: TextStyle(color: Colors.grey),
       /*suffixIcon: IconButton(
         onPressed: (){
           _toggleVisiblity = !_toggleVisiblity;
         },
         icon :Icon(Icons.visibility_off),
       ),*/
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
              Text("Sign Up",style: TextStyle(fontSize: 20),),
           
           SizedBox(height: 50,),
           SizedBox(height: 20,),

           Card(
             elevation: 0.0,
             child: Padding(
                padding: EdgeInsets.all(20.0),
                 child: Column(
                 children: <Widget>[

                   _buildEmailTextField(),
                   _buildUsernameTextField(),
                   _buildPasswordTextField(),
                   _buildConfirmPasswordTextField(),
                   
                 ],
                ),
             ) ,
             
             
             ),
             GestureDetector(
               onTap: (){
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
               }, 
                            child: Container(
                 height: 50,
                 decoration: BoxDecoration(
                   color: Colors.blueAccent,
                   borderRadius: BorderRadius.circular(30)
                 ),
                 child: Center(child: Text("Create an account", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),),
               ),
             ),
           ],
          ),
         
         ),
     );
  }
}